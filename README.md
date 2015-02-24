# Dotvim

## Submodules

### Get

To get all submodules, simply run this command:

```sh
git submodule init
git submodule update
```

### Delete

To delete a submodule denoted by ```sub``` inside bundle repo with git -v1.8.3 or higher, follow these steps:
```
git submodule deinit bundle/sub
git rm bundle/sub
rm -rf .git/modules/bundle/sub
```

If git -v is lower than 1.8.3:

first, delete the relevant section from the ```.gitmodules``` file
```git add .gitmodules````

Next, delete the relevant section from .git/config file
```
git rm --cached bundle/sub
rm -rf .git/modules/bundle/sub
git commit -m "Removed submodule <name>
```

