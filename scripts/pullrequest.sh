vim -c 'syntax off'  -c 'tabdo set filetype=review' -c 'tabdo Gdiff '${1:-master} $(git diff --name-only --diff-filter=AM ${1:-master}) -p
