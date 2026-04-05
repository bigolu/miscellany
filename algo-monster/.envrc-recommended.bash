source_url 'https://raw.githubusercontent.com/bigolu/system-configurations/refs/heads/master/direnv/plugins/direnv-manual-reload.bash' 'sha256-cJlHaRrQkPf6BY/mcQi/rrBQmESbGRBqdurDQ5/Q20w='
direnv_manual_reload
source_url 'https://raw.githubusercontent.com/bigolu/system-configurations/refs/heads/master/direnv/plugins/devshell-direnv.bash' 'sha256-jdYpPcz6VTJOuuYyDDqIn1MutsLUds/WI9xsEUcCZ1U='
DEVSHELL_DIRENV_FALLBACK=true use_devshell --file flake-compat.nix default

