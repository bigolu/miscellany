{ perSystem, ... }:
perSystem.devshell.mkShell (
  { extraModulesPath, pkgs, ... }:
  {
    imports = [
      "${extraModulesPath}/locale.nix"
    ];

    env = [
      {
        name = "DEVSHELL_NO_MOTD";
        value = 1;
      }
      {
        name = "NIXPKGS_PATH";
        unset = true;
      }
    ];

    devshell.packages = with pkgs; [ 
      python3
    ];
  }
)
