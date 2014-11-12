Dots
====

my personal dotfiles, combination of codes/dotfiles that i like to put in my box.

# Installation

```bash```
mkdir -p /tmp/dots && cd /tmp/dots && curl -O -L https://github.com/silverbux/dots/archive/master.tar.gz | tar zx --strip 1 && sh ./install.sh
```

# NOTES
some notes for me

##### Boot Repair
sudo add-apt-repository ppa:yannubuntu/boot-repair

sudo sh -c "sed -i 's/trusty/saucy/g' /etc/apt/sources.list.d/yannubuntu-boot-repair-trusty.list"

sudo apt-get update

sudo apt-get install -y boot-repair && boot-repair


### Credits & Sources

All necessary credits are given.

- https://github.com/pongstr/dotfiles
- https://github.com/MatthewMueller/dots
- https://gist.github.com/brandonb927/3195465
- https://github.com/mathiasbynens/dotfiles/blob/master/.osx
