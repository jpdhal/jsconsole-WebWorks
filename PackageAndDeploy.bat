REM Written by Matthew Haag / haagmm : at : gmail.com
REM For depoloyment to the Blackberry Playbook Simulator
REM Replace your IP/Name/Password/InstallDir for mine.

REM this depends on info-zip which is available for MOST platforms here : http://www.info-zip.org/FAQ.html#download


SET ip=192.168.1.6
SET name=JSConsole
SET password=a
SET installDir="C:\rim\Playbook\SDK2.0\bbwp"
SET old_Java_home=%JAVA_HOME%
SET JAVA_HOME=%installDir%\..\jre\bin
SET mycskpassword=
SET myp12password=
set mybuildId=22

del %name%.zip %name%.bar %name%.bar.sig

zip -0 -r %name%.zip * -x .* *.exe *.bar *.zip *.bat

if X==X%mycskpassword% GOTO unsignedbuild
	%installDir%\bbwp %name%.zip -gcsk %mycskpassword% -gp12 %myp12password% -buildId %mybuildId% -o ./
	goto finish
	:unsignedbuild
	%installDir%\bbwp %name%.zip -o ./ 
	goto finish
:finish
%installDir%\blackberry-tablet-sdk\bin\blackberry-deploy   -installApp -password %password% -device %ip% -devMode -package %name%.bar

SET JAVA_HOME=%old_Java_home%
