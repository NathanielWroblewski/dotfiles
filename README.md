Vim Setup Notes
===

1. Clone dotfiles into home directory, `~`.

2. Comment out lines 81-84 pertaining to solarized from `.vimrc` file

3. install vundle (Vim plugin installer) from Github: `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

4. Launch `vim` and run `:PluginInstall`

5. You can now uncomment Solarize in your .vimrc file. Everything should be installed now except for Solarize, which is a color scheme tool. If you’re using iTerm, it will override your color schemes, so you still need to change your color scheme within iTerm.

6. Download iTerm if you haven’t already.

7. Download iTerm color schemes from `https://github.com/mbadolato/iTerm2-Color-Schemes`.

8. Open up iTerm, go into Profiles, and then “Edit Profiles/Colors”. Click “Load Presets” and you can choose a preset from the color schemes folder that you downloaded. If you want, choose the `Solarize Light` preset.

These next few steps deal with setting up `zsh` to further customize your terminal display.

1. Make sure you have the .oh-my-zsh folder. Zshell is a Unix shell that has some improvements over bash.

2. Create a new `zsh` config file: `cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc`

3. Set it as your default shell: `chsh -s /bin/zsh`

4. If your “vg” short command and symlink to DS_HOME no longer work, add this to the end of your .zshrc file:

```
export DS_HOME="/Volumes/ds_home/core"
    function vg() {
        if [ $1 ]
        then
            pushd $DS_HOME;
            vagrant $@;
                popd;
         else
                pushd $DS_HOME;
           fi
    }
```
