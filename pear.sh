#!/bin/sh
rm -f phpDox*.tgz
mkdir -p tmp/TheSeer/phpDox/templates
cp -r src/* tmp/TheSeer/phpDox
cp -r templates/* tmp/TheSeer/phpDox/templates
cp phpdox.bat tmp
cp phpdox.php tmp
cd tmp
php ../../DirectoryScanner/samples/pear-package.php ../package.xml . | xmllint --format - > package.xml
pear package
mv phpDox*.tgz ..
cd ..
rm -rf tmp
