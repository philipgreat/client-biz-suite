# !/bin/bash

projectname="$1-biz-suite "
git clone https://github.com/philipgreat/client-biz-suite.git  $projectname 
rm -rf $projectname/.git
cp -Ra skynet-common-app-framework/*  $projectname/bizcore/ 
cp -Ra skynet-react-framework/* $projectname/bizui/
