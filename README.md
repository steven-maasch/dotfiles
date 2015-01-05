My Dotfiles
================

Configuration files for my $HOME using [Dotbot][dotbot] for bootstrapping.

#### Installation
```bash
git clone git@github.com:steven-maasch/dotfiles.git
git submodule update --init --recursive
./install
```
Launch `vim` and run `:PluginInstall`

Launch `tmux` and hit `prefix + I`

### Included Configurations
+ bash_aliases
+ bash_profile
+ bashrc
+ inputrc
+ profile
+ [base16-shell][base16_shell]
+ vimrc
 + [Vundle][vundle]
 + [NERDTree][nerdtree]
 + [vim-sensible][vim_sensible]
 + [vim-surround][vim_surround]
+ tmux.conf
 + [tpm][tmux_tpm]
 + [tmux-sensible][tmux_sensible]
 + [tmux-pain-control][tmux_pain_control]
+ gitconfig

### Requirements
+ [tmux] >= 1.9

[dotbot]: https://github.com/anishathalye/dotbot/
[tmux_tpm]: https://github.com/tmux-plugins/tpm
[tmux_pain_control]: https://github.com/tmux-plugins/tmux-pain-control
[tmux_sensible]: https://github.com/tmux-plugins/tmux-pain-control
[nerdtree]: https://github.com/scrooloose/nerdtree
[vundle]: https://github.com/gmarik/Vundle.vim
[vim_sensible]: https://github.com/tpope/vim-sensible
[vim_surround]: https://github.com/tpope/vim-surround
[base16_shell]: https://github.com/chriskempson/base16-shell
[tmux]: http://tmux.sourceforge.net/
