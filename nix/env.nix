{ pkgs, packages }:
with packages;
{
  system = [
    coreutils
    sd
    bash
    findutils
    jq
    yq-go
  ];

  dev = [
    pls
    git
  ];

  infra = [
  ];

  main = [
    node
    infisical
    pnpm
  ];

  lint = [
    # core
    treefmt
    gitlint
    shellcheck
  ];

  ci = [

  ];

  releaser = [
    sg
  ];

}
