# !/bin/bash

projectname="$1-biz-suite "
git clone https://github.com/philipgreat/client-biz-suite.git  $projectname 
rm -rf $projectname/.git
echo "copying bizcore.........."
cp -Ra skynet-common-app-framework/*  "$projectname/bizcore/"
echo "copying bizui.........."
cp -Ra skynet-react-framework/* "$projectname/bizui/"
echo "done"

