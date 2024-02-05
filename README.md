## You can find all files in /final

## downloading disko.nix
```bash
curl https://raw.githubusercontent.com/vimjoyer/impermanent-setup/main/final/disko.nix -O /tmp/disko.nix
```

## disko formatting command
replace `'"/dev/vda"'` with your drive
```bash
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko /tmp/disko.nix --arg device '"/dev/vda"'
```

## initialize flake
```bash
nix flake init --template github:vimjoyer/impermanent-setup
```

## installing nixos
```bash
nixos-install --root /mnt --flake /mnt/etc/nixos#default
```
