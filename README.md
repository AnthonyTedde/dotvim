# Dotvim

## install

Clone this repo inside the home user folder.

```
cd ~
git clone https://github.com/elpapito/dotvim.git .vim
cp .vim/.vimrc .vimrc
```

## Submodules

### Get

To get all submodules, simply run this command:

```sh
git submodule init
git submodule update
```

### Delete
#### With a git version 1.8.3 or higher

To delete a submodule denoted by __sub__ inside bundle repo with git -v _1.8.3_ or higher, follow these steps:
```
git submodule deinit bundle/sub
git rm bundle/sub
rm -rf .git/modules/bundle/sub
```

#### With a git version lower than 1.8.3

First, delete the relevant section inside the __.gitmodules__ file, and run:
```
git add .gitmodules
```

Next, delete the relevant section inside the __.git/config file__, and perform:
```
git rm --cached bundle/sub
rm -rf .git/modules/bundle/sub
git commit -m "Removed submodule <name>
```

