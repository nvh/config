function git_rebase_current_branch_on_latest_of
    if test (count $argv) -eq 1
        git fetch
        git push
        set current_branch (git rev-parse --abbrev-ref HEAD)
        git checkout $argv
        git pull
        git checkout $current_branch
        git rebase $argv
        git push --force
    else
        echo "Usage: git_rebase_current_branch_on_latest_of <branch_to_rebase_on>"
    end
end
