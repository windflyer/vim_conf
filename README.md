My vim plugins and configurations.

Make update_vimrc.sh executable and run it to update your .vimrc:

    chmod u+x update_vimrc.sh
    ./update_vimrc

To clone plugins provided by submodules, run:

    git submodule init
    git submodule update

The "powerline" vim plugin will not work well due to the absence of some fonts in Ubuntu. A patch can be found here: https://github.com/scotu/ubuntu-mono-powerline
