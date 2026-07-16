{
  description = "Site informativo da Sede Regional Serra da Maratona SBC de Programação 2026";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      forAllSystems = nixpkgs.lib.genAttrs systems;

      pkgsFor = system: import nixpkgs {
        inherit system;
      };
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = pkgsFor system;

          site = pkgs.stdenvNoCC.mkDerivation {
            pname = "maratona-sbc-2026-serra-site";
            version = "0.1.0";
            src = ./.;

            nativeBuildInputs = [ pkgs.typst ];

            dontConfigure = true;

            buildPhase = ''
              runHook preBuild

              if [ -f documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.typ ]; then
                typst compile \
                  documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.typ \
                  documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.pdf
              fi

              runHook postBuild
            '';

            installPhase = ''
              runHook preInstall

              mkdir -p $out/share/maratona-sbc-2026-serra

              cp -v index.html $out/share/maratona-sbc-2026-serra/

              if [ -f README.md ]; then
                cp -v README.md $out/share/maratona-sbc-2026-serra/
              fi

              if [ -d documentos ]; then
                cp -rv documentos $out/share/maratona-sbc-2026-serra/
              fi

              runHook postInstall
            '';
          };

          buildOrientacoes = pkgs.writeShellApplication {
            name = "build-orientacoes";
            runtimeInputs = [ pkgs.typst ];
            text = ''
              set -euo pipefail

              typst compile \
                documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.typ \
                documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.pdf

              echo "PDF gerado em documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.pdf"
            '';
          };
        in
        {
          default = site;
          site = site;
          build-orientacoes = buildOrientacoes;
        });

      apps = forAllSystems (system:
        let
          pkgs = pkgsFor system;

          previewSite = pkgs.writeShellApplication {
            name = "preview-site";
            runtimeInputs = [ pkgs.python3 ];
            text = ''
              set -euo pipefail

              port="''${PORT:-8000}"
              echo "Servindo o site em http://localhost:$port"
              echo "Pressione Ctrl+C para encerrar."
              python3 -m http.server "$port"
            '';
          };

          buildOrientacoes = pkgs.writeShellApplication {
            name = "build-orientacoes";
            runtimeInputs = [ pkgs.typst ];
            text = ''
              set -euo pipefail

              typst compile \
                documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.typ \
                documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.pdf

              echo "PDF gerado em documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.pdf"
            '';
          };
        in
        {
          default = {
            type = "app";
            program = "${previewSite}/bin/preview-site";
          };

          preview = {
            type = "app";
            program = "${previewSite}/bin/preview-site";
          };

          build-orientacoes = {
            type = "app";
            program = "${buildOrientacoes}/bin/build-orientacoes";
          };
        });

      devShells = forAllSystems (system:
        let
          pkgs = pkgsFor system;
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.git
              pkgs.typst
              pkgs.python3
            ];

            shellHook = ''
              echo "Ambiente do site da Sede Regional Serra"
              echo "Comandos úteis:"
              echo "  typst compile documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.typ documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.pdf"
              echo "  nix run .#build-orientacoes"
              echo "  nix run .#preview"
            '';
          };
        });

      checks = forAllSystems (system:
        let
          pkgs = pkgsFor system;
        in
        {
          site-builds = self.packages.${system}.site;

          typst-orientacoes = pkgs.runCommand "typst-orientacoes-check" {
            nativeBuildInputs = [ pkgs.typst ];
            src = ./.;
          } ''
            cp -r $src source
            cd source

            if [ -f documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.typ ]; then
              typst compile \
                documentos/orientacoes_inscricao_maratona_sbc_2026_sede_serra.typ \
                orientacoes-check.pdf
            fi

            touch $out
          '';
        });
    };
}
