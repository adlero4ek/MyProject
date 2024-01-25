rmdir /s /q "Z:\Dev\Dochub\MyProject_Web\metamodel\metamodel\"
xcopy "Z:\Dev\Dochub\MyProject\Metamodel" "Z:\Dev\Dochub\MyProject_Web\metamodel\metamodel\" /S /E


rmdir /s /q "Z:\Dev\Dochub\MyProject_Web\manifest\manifest"
xcopy "Z:\Dev\Dochub\MyProject\Datalake" "Z:\Dev\Dochub\MyProject_Web\manifest\manifest\" /S /E

explorer "Z:\Dev\Dochub\MyProject_Web"