del complete.zip
rm -rf src/
7z a -tzip complete.zip -r *.* -x!.* -x!device -x!simulator -x!src -x!bbUI.js-master -x!copy -x!jsConsole
cmd /C "C:\Program Files\Research In Motion\BlackBerry 10 WebWorks SDK 1.0.4.5\bbwp" complete.zip -d
echo build! 
blackberry-deploy -installApp -device 192.168.1.108 -password 1235 device\complete.bar