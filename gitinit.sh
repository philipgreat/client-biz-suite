# !/bin/bash
projectname="__project_name__"
git init
git add .
git commit -m "First commit"
git remote add origin "https://github.com/philipgreat/$projectname.git"
git remote -v
git pull
git push --set-upstream origin master
git push
