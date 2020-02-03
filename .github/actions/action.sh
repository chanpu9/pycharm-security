#!/bin/sh -l
cd /code
echo "Scanning $1"
/opt/pycharm-community/bin/inspect.sh $1 /sources/SecurityInspectionProfile.xml out.log -format plain -v0 2> errors.log
echo ::set-output name=result::$(< out.log)
cat errors.log
