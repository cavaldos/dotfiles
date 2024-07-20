# dotfiles

## Install

:warning: Backup your configuration before installation

```bash
$ cd $HOME && git clone https://github.com/cavaldos/dotfiles
$ cd dotfiles
$ ./install.sh
```

## Auto install dependence

## Mount device USB, MTP,... (udisks2)

```bash
$ lsblk
$ udisksctl mount -b /dev/sdb
$ udisksctl unmount -b /dev/sdb
```

## Fix border

- Install dependence:

```bash
$ pip install pycairo
$ sudo pacman -S libwnck3
$ git clone https://github.com/deter0/xborder
$ cd xborder
$ chmod +x xborders
$ ln -s xborders ~/.local/bin
$ ./xborders --border-radius 10 --border-width 1 --border-blue 255
```

## Fix run ibus-setup

```txt
$ ibus-setup
Traceback (most recent call last):
  File "/usr/share/ibus/setup/main.py", line 33, in <module>
    from gi import require_version as gi_require_version
ModuleNotFoundError: No module named 'gi'
```

> I had the same error message and it was caused by using non-system python interpreter.

- Fix: Run python system `usr/bin/pthon`

```bash
$ /usr/bin/python /usr/share/ibus/setup/main.py
```

## Fix visudo user

```bash
$ sudo EDITOR=nvim visudo
```

> uncomment line

```config
%wheel ALL=(ALL:ALL) ALL
```
