SET WorkingUnit=E:
SET OutputPath=%WorkingUnit%\Output
SET CompiledPath=%OutputPath%\Release
SET VsUnit=C:
SET VsPath=%VsUnit%\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE
SET startPath=%CD%
SET Path7Z=C:\Program Files\7-Zip\7z.exe
SET WorkaroundPath=%VsPath%\CommonExtensions\Microsoft\VSI\DisableOutOfProcBuild
SET SolutionName=OMStill_Truck_Manager

REM Nome file da creare
SET zipFile=quickmove-1.9.0.xpi
SET fullZipFilePath=%USERPROFILE%\desktop\%zipFile%

del %fullZipFilePath%
REM Creo l'archivio contenente tutto il compilato
cd src
"%Path7Z%" a -r -tzip -mx=1 %fullZipFilePath% *.*

cd ..

REM Apro una cartella di explorer mostrando il file
Explorer /select, %fullZipFilePath%


