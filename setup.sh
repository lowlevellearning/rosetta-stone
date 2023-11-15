#!/bin/env bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    DIST=$NAME
elif type lsb_release >/dev/null 2>&1; then
    DIST=$(lsb_release -si)
elif [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    DIST=$DISTRIB_ID
elif [ -f /etc/debian_version ]; then
    DIST=Debian
elif [ -f /etc/SuSe-release ]; then
    DIST=SLES
fi

case "$DIST" in
    "Arch Linux")
        sudo pacman -S --needed --noconfirm aarch64-linux-gnu-gcc arm-none-eabi-gcc
        echo "Arch does not provide an up-to-date PowerPC gcc compiler, you will have to manually install one."
        ;;
    "Debian GNU/Linux" | "Ubuntu")
        sudo apt install gcc-aarch64-linux-gnu gcc-arm-linux-gnueabi gcc-powerpc-linux-gnu
        ;;
    "SLES")
        # zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.refresh
        # zypper refresh
        # zypper install cross-aarch64-gcc7
        echo "SUSE is not currently supported due to packaging errors"
        exit
        ;; #not needed but included for symmetry
    "Fedora Linux" | "Red Hat Enterprise Linux")
        dnf -y install gcc-aarch64-linux-gnu.$(uname -m) arm-none-eabi-gcc-cs.$(uname -m) gcc-powerpc64-linux-gnu.$(uname -m)
        ;;
    *)
        echo -E "Script does not currently support installation for $DIST.\nPlease open an issue on the GitHub page detailing what distribution you are using."
        ;;
esac   


