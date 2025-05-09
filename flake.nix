{
  description = "Adima";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    coua = {
      url = "git+ssh://git@github.com/DLR-FT/coua?ref=main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    malkoha = {
      url = "github:DLR-FT/malkoha";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      coua,
      flake-utils,
      malkoha,
      nixpkgs,
      ...
    }:
    flake-utils.lib.eachSystem
      [
        "aarch64-linux"
        "x86_64-linux"
      ]
      (
        system:
        let
          pkgs = import nixpkgs {
            inherit system;
          };
          couapkg = coua.packages.${system}.default;
          malkohapkg = malkoha.packages.${system}.default;

          python = pkgs.python3.withPackages (ps: [
            coua
            malkoha
          ]);
        in {
          devShells.default =
            pkgs.mkShell {
              packages = [
                couapkg
                malkohapkg
                pkgs.gnumake
                pkgs.oxigraph
                pkgs.sphinx
                python
              ];
            };
        }
      );
}
