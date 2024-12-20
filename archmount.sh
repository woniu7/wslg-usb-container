sudo mount -o loop /mnt/$1/archlinux.img /mnt/archlinux &&  cp /etc/resolv.conf /mnt/archlinux/etc/resolv.conf &&
#if win
if [[ "$(uname -r)" == *"WSL"* ]]; then 
ln -sf  /mnt/wslg/runtime-dir/wayland-* $XDG_RUNTIME_DIR/ && 
sudo mount --rbind /mnt/wslg /mnt/archlinux/mnt/wslg &&  sudo mount --rbind /mnt/wsl /mnt/archlinux/mnt/wsl 
fi
sudo mount -t proc /proc  /mnt/archlinux/proc &&  sudo mount -t sysfs /sys /mnt/archlinux/sys &&  sudo mount --rbind /dev /mnt/archlinux/dev &&  sudo mount --rbind /run /mnt/archlinux/run && sudo mount --rbind /tmp /mnt/archlinux/tmp &&  sudo -E chroot /mnt/archlinux/ /usr/bin/su qs
