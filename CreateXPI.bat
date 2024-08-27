SET Path7Z=C:\Program Files\7-Zip\7z.exe

REM Nome file da creare
SET zipFile=quickmove-2.9.2.1.xpi
SET fullZipFilePath=%USERPROFILE%\desktop\%zipFile%

del %fullZipFilePath%
REM Creo l'archivio contenente tutto il compilato
cd src
"%Path7Z%" a -r -tzip -mx=1 %fullZipFilePath% *.*

cd ..

REM Apro una cartella di explorer mostrando il file
REM Explorer /select, %fullZipFilePath%


pause