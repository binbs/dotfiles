# Git
https://github.com/binbsoffn/dotfiles.git
## [Tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

    git init --bare $HOME/.cfg
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    config config --local status.showUntrackedFiles no
    echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    echo ".cfg" >> .gitignore

## Cloning

    git clone --bare <git-repo-url> $HOME/.cfg
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

    config checkout

    mkdir -p .config-backup && \
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}

    config config --local status.showUntrackedFiles no

## git
nice gitconfig is when you setup your emailaddress to the one provided by github
and set up caching, so you need to setup your credentials only once
[user]
    email = 9432238+binbsoffn@users.noreply.github.com
    name = binbsoffn
[credential]
    helper = cache --timeout=36000

## vim
### installing vim
Whenever the package manager provides only unsuitable vim versions,
it**'s actually pretty straightforward to compile from source...
    git clone https://github.com/vim/vim
    cd vim
    ./configure --with-features=huge --enable-multibyte --enable-python3interp=yes --enable-cscope

### Getting plugins
you need to install pathogen manually
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

You can use the python script lying in the .init_config folder accompanying this document
For the vim-plug plugins use this and a `:PlugInstall` inside vim

    ./extract_git_remotes ~/.vim/plugged --clone

For the pathogen plugins use this one and some `:HelpTags` inside vim

    ./extract_git_remotes ~/.vim/bundle --clone

### Submodules
Adding can be done using
    config submodule add 'origin path' 'local path'
    or execute the add_to_config.sh
Listing can be done using
    config config --file .gitmodules --get-regexp path | awk '{ print $2 }'

### YouCompleteMe
YCM needs some compilation in the plugin folder
    ./install.py --clangd-completer
