# Creating repository and adding tracked file
git init
touch newFile.txt
git add newFile.txt

# Committing to main branch (bad!)
git commit -m "commit right to main branch (bad\!)"

# Creating a branch off main called alexis/hw1
git checkout -b "alexis/hw1"

# make some changes to the file
ECHO $'\n\n**** Please add something to the file (this work will be committed on the new branch) ****'
ECHO "**** Then save and close the file ****"
notepad newFile.txt

#committing changes to branch
git commit -a -m "commit changes to new branch"

# switching back to main branch
git checkout master

# edit file to add new work
ECHO $'\n\n**** Please add something to the file (this work will be committed on main) ****'
ECHO "**** Again, save and close the file when you are done editing ****"
notepad newFile.txt

# committing new work to main branch (again, bad)
git commit -a -m "commit new work to main branch (again, bad\!)"

# merging alexis/hw1 branch back to main
git merge alexis/hw1
# resolve merge conflicts with kdiff3
ECHO $'\n\n**** Resolve the merge conflicts and save ****'
ECHO "**** One moment ****"
git mergetool -t kdiff3

# committing resolved file to main
git commit -m "commit merged filed from alexis/hw1 branch"