cd "~/.emacs.d"
echo "git pull --rebase"
git pull --rebase
echo "git submodule sync"
git submodule sync
echo "git submodule update"
git submodule update
