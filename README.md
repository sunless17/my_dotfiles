# my dotfiles
"stows" my dotfiles
## requirements
- Git
- Stow
## installation
```bash
$ git clone git@github.com/sunless17/my_dotfiles.git
# specific apps config
$ cd my_dotfiles/${PACKAGE}
# -v = verbose -t ${DIR} = config directory to create the link
$ stow -v -t ${DIR} .
```
