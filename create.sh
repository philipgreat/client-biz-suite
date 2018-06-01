# !/bin/bash

projectname="$1-biz-suite"
git clone https://github.com/philipgreat/client-biz-suite.git  $projectname 
rm -rf $projectname/.git
echo "$projectname" >> $projectname/projectname
echo "copying bizcore..........$projectname/bizcore/"
cp -Ra skynet-common-app-framework/*  "$projectname/bizcore/"
echo "copying bizui..........to $projectname/bizui/"
cp -Ra skynet-react-framework/* "$projectname/bizui/"
echo "done"
sed -i -e  "s/__project_name__/$projectname/g" $projectname/gitinit.sh 



