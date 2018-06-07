# !/bin/bash

projectname="$1-biz-suite"
git clone https://github.com/philipgreat/client-biz-suite.git  $projectname 
rm -rf $projectname/.git
echo "$projectname" >> $projectname/projectname
echo "copying bizcore..........$projectname/bizcore/"
cp -Ra skynet-common-app-framework/*  "$projectname/bizcore/"
mv "$projectname/bizcore/viewlayers/*" "$projectname/bizcore/"
mv "$projectname/bizcore/static/*" "$projectname/bizcore/"
echo "copying bizui..........to $projectname/bizui/"
cp -Ra skynet-react-framework/. "$projectname/bizui/"
echo "repalcing __project_name__ to $projectname in gitinit.sh"
sed -i -e  "s/__project_name__/$projectname/g" $projectname/gitinit.sh 
echo "done"



