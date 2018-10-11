git diff --name-only 173d772fead6d508f84732913fe65d877ee1bb8b 29b6add509f82c9c946cdbb9fe249323896a0897
git add -p -> git add by chunks
git ls-files


### undo commit without losing changes 
`git reset HEAD~1 --soft`

# unstage chages without losing changes
git reset HEAD <file>

accepted
You can use git add --patch <filename> (or -p for short), and git will begin to break down your file into what it thinks are sensible "hunks" (portions of the file). It will then prompt you with this question:

Stage this hunk [y,n,q,a,d,/,j,J,g,s,e,?]?
Here is a description of each option:

y stage this hunk for the next commit
n do not stage this hunk for the next commit
q quit; do not stage this hunk or any of the remaining hunks
a stage this hunk and all later hunks in the file
d do not stage this hunk or any of the later hunks in the file
g select a hunk to go to
/ search for a hunk matching the given regex
j leave this hunk undecided, see next undecided hunk
J leave this hunk undecided, see next hunk
k leave this hunk undecided, see previous undecided hunk
K leave this hunk undecided, see previous hunk
s split the current hunk into smaller hunks
e manually edit the current hunk
? print hunk help



---
Interactive rebase off of a point earlier in the history than the commit you need to modify (git rebase -i <earliercommit>). In the list of commits being rebased, change the text from pick to edit next to the hash of the one you want to modify. Then when git prompts you to change the commit, use this:

git commit --amend --author="Author Name <email@address.com>"
For example, if your commit history is A-B-C-D-E-F with F as HEAD, and you want to change the author of C and D, then you would...

Specify git rebase -i B (here is an example of what you will see after executing the git rebase -i B command)
if you need to edit A, use git rebase -i --root
change the lines for both C and D from pick to edit
Once the rebase started, it would first pause at C
You would git commit --amend --author="Author Name <email@address.com>"
Then git rebase --continue
It would pause again at D
Then you would git commit --amend --author="Author Name <email@address.com>" again
git rebase --continue
The rebase would complete.
---

