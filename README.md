# Dotfiles by Nikitos

## Installation

First, install a proper version of these CLI dependencies:

| CLI                                               | Last used version        | Description                                    |
| ------------------------------------------------- | ------------------------ | ---------------------------------------------- |
| [fish](https://github.com/fish-shell/fish-shell)  | 3.5.1                    | modern shell                                   |
| [tmux](https://github.com/tmux/tmux/)             | 3.0a                     | terminal multiplexer                           |
| [tmp](https://github.com/tmux-plugins/tpm)        | 3.1.0                    | tmux plugin manager                            |
| [fzf](https://github.com/junegunn/fzf)            | 0.32.1                   | fuzzy finder                                   |
| [fd](https://github.com/sharkdp/fd)               | 8.4.0                    | faster and more colorful alternative to `find` |
| [bat](https://github.com/sharkdp/bat)             | 0.21.0                   | smarter `cat` with syntax highlighting         |
| [ripgrep](https://github.com/BurntSushi/ripgrep)  | 13.0.0                   | line-oriented search tool                      |
| [exa](https://github.com/ogham/exa)               | v0.10.1                  | modern replacement for ls                      |

Fish plugins:
| Plugin                                            | Description                                    |
| ------------------------------------------------- | ---------------------------------------------- |
| [Fisher](https://github.com/jorgebucaran/fisher)  | plugins manager                                |
| [Z](https://github.com/jethrokuan/z)              | directory jumping                              |
| [FZF](https://github.com/PatrickF1/fzf.fish)      | fuzzy finder support                           |
| [Pure](https://github.com/pure-fish/pure)         | prompt                                         |

Next, clone repository 

```bash
git clone --bare https://github.com/Nikitos096/dotfiles.git $HOME/dotfiles
```
If you don't have the config alias, set one
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

Set showUntrackedFiles no

```bash
config config --local status.showUntrackedFiles no
```

## Initialization

Initialize a bare repository
```bash
git init --bare $HOME/dotfiles
```

Add the alias to manange a git repository
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc

```
Set showUntackedFiles no
```bash
config config --local status.showUntrackedFiles no
```

## Backup

To backup your files if conflict occurred
```bash
mkdir -p dotfiles-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} dotfiles-backup/{}
```
