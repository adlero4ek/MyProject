rmdir /s /q "D:\Dev\Dochub\MyProject_Web\metamodel\metamodel\"
xcopy "D:\Dev\Dochub\MyProject\Metamodel" "D:\Dev\Dochub\MyProject_Web\metamodel\metamodel\" /S /E


rmdir /s /q "D:\Dev\Dochub\MyProject_Web\manifest\manifest"
xcopy "D:\Dev\Dochub\MyProject\Datalake" "D:\Dev\Dochub\MyProject_Web\manifest\manifest\" /S /E

explorer "D:\Dev\Dochub\MyProject_Web"

