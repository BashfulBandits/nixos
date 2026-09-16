{ pkgs, ... }:

pkgs.writeShellScriptBin "nr" ''
  set -e
  pushd ~/nixos/ &> /dev/null
  git diff -U0 -- '*.nix'
  git add -A
  while true; do
      read -r -p "Continue? [y/n] " answer
      case "$answer" in
          [Yy]) break ;;
          [Nn]) echo "Rebuild Stopped."; exit 0 ;;
          *) echo "Please answer y or n." ;;
      esac
  done
  echo "Nixos rebuilding..."
  sudo nixos-rebuild switch --flake ~/nixos#default &> nixos-rebuild.log || (
      #cat nixos-switch.log | grep --color error && false)
      cat nixos-rebuild.log | sed -n '/[Ee]rror:[[:space:]]\+\S/,/^\^/{/^\^/!p}')
  gen=$(nixos-rebuild list-generations | grep True)
  
  result=$(cat nixos-rebuild.log | sed -n '/[Ee]rror:[[:space:]]\+\S/,/^\^/{/^\^/!p}')
  if [ -z "$result" ]; then
      git commit -am "$gen"
      echo "\nRebuild complete"
  fi
  popd &> /dev/null
''
