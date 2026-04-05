{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    blueprint = { url = "github:numtide/blueprint"; inputs.nixpkgs.follows = "nixpkgs"; };
    devshell = { url = "github:numtide/devshell"; inputs.nixpkgs.follows = "nixpkgs"; };
  };

  outputs = inputs: inputs.blueprint { inherit inputs; };
}
