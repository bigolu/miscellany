{ perSystem, inputs, ... }:
perSystem.devshell.mkShell (
  { extraModulesPath, pkgs, ... }:
  {
    imports = [
      "${extraModulesPath}/locale.nix"
    ]
    ++ (with inputs.devshell-modules.devshellModules; [
      minimal
      autocomplete
      state
      gcRoot
    ]);

    gcRoot.roots.flake.inputs = inputs;

    devshell.packages = with pkgs; [ 
      python3
      ty
      ruff
    ];
  }
)
