#1. Identify changed files
    #For changes not yet committed:
git diff --name-only

    #For changes between commits (e.g., between commit1 and commit2):
git diff --name-only commit1 commit2

    #For files staged but not yet committed:
git diff --name-only --cached

    #For all untracked and modified files (including staged):
git ls-files --others --modified --exclude-standard

#2. Copy files to another folder
    #Using rsync:
git diff --name-only | rsync -av --files-from=- ./ /path/to/destination

    #Using cp in a loop:
for file in $(git diff --name-only); do
    cp --parents "$file" /path/to/destination/
done

    #The --parents option ensures that the directory structure is preserved during the copy. You can adjust the command based on whether you're copying untracked files or staged files.