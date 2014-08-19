My vim plugins and configurations.
---

Make update_vimrc.sh executable and run it to update your .vimrc:

    chmod u+x update_vimrc.sh
    ./update_vimrc

To clone plugins provided as submodules, run:

    git submodule init
    git submodule update

The "powerline" vim plugin may not work well due to the absence of some fonts in Ubuntu. A patch can be found here: https://github.com/scotu/ubuntu-mono-powerline Or run:

    cd ~/.fonts/ && git clone https://github.com/scotu/ubuntu-mono-powerline.git && cd ~

If you are working with gvim in Linux, you may need to intall Monaco font for Linux. Here is an alternative for Ubuntu: https://github.com/cstrap/monaco-font Or just run:

    curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash
