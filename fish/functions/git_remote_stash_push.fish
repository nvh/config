function git_remote_stash_push
    set tmp_branch 'wip'
    git stash push
    set current_commit (git rev-parse HEAD)
    set current_branch (git rev-parse --abbrev-ref HEAD)
    echo $current
    git push
    git checkout $tmp_branch
    git reset --hard $current_commit
    git stash apply
    git add *
    git commit -m "WIP on $current_branch"
    git push --force
    git checkout $current_branch
end
