function git_remove_tag --description "Remove git tag locally and remotely"
    if test (count $argv) -eq 1
        command git tag -d $argv
        command git push origin :refs/tags/$argv
    else
        echo "Usage: git_remove_tag <tagname>"
    end
end