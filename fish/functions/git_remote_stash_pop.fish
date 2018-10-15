function git_remote_stash_pop
    set git_root (git rev-parse --show-toplevel)
    cd $git_root
    set tmp_branch 'wip'
    git pull
    set current_branch (git rev-parse --abbrev-ref HEAD)
    git checkout $tmp_branch
    git pull
    git reset HEAD^
    git stash push
    git checkout $current_branch
    git stash pop
end
