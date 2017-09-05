sudo pacman -S systemd-swap

echo "Set swapfu_enabled=1 in the Swap File Universal section of /etc/systemd/swap.conf"

sudo systemctl enable systemd-swap
