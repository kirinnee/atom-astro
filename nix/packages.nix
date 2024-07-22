{ pkgs, atomi, pkgs-2305, pkgs-may-05-24 }:
let
  all = {
    atomipkgs = (
      with atomi;
      {
        inherit
          infisical
          pls;
      }
    );
    nix-2305 = (
      with pkgs-2305;
      { }
    );
    may-05-24 = (
      with pkgs-may-05-24;
      {
        inherit
          coreutils
          findutils
          sd
          bash
          git
          jq
          yq-go

          # lint
          treefmt
          gitlint
          shellcheck;
        node = nodejs_22;
        pnpm = nodePackages.pnpm;
      }
    );
  };
in
with all;
nix-2305 //
may-05-24 //
atomipkgs
