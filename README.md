# Windows Alias
Create aliases for quick use of custom programs on the command prompt in Windows

## Instructions
### Automatic
Provided in the repo is batch file to install the alias in the registry automatically.  
To use this file, start an command prompt 'as admin'.  
Run 'install.bat'
```
cd PATH_TO_REPO
install.bat
```
This will install the alias to the registry.
### Manual
#### Create batch file
Create a new alias batch file.
This will use DOSKEY to store aliases e.g.
```
@DOSKEY ls=DIR $* 
@DOSKEY cp=COPY $* 
@DOSKEY xcp=XCOPY $*
@DOSKEY mv=MOVE $* 
@DOSKEY clear=CLS
@DOSKEY h=DOSKEY /HISTORY
@DOSKEY alias=if ".$*." == ".." ( DOSKEY /MACROS ) else ( DOSKEY $* )
```
*See example file in this repo 'ExampleAlias.bat'*  
*Also see my personal alias file 'Alias.bat'*

#### Add to registry
Open the register HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor.  
This can be done by opening Registery editor from the start menu. Then finding that path.  
Add a String Value named 'Autorun' by [Right click]->New->String Value->Enter Autorun.  
Set the value of this register to the absolute path of the Alias.bat file e.g.  
```
C:\Code\Alias\Alias.bat
```
Close the registery editor and everything should setup.  
This batch file will execute every time you open a command prompt.

### Test
Try calling ls from the command prompt 
```
ls
```

## Other useful alias
Setting up MSVC console:
```
@DOSKEY vs15x32=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86 $* 
@DOSKEY vs15x64=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64 $* 
@DOSKEY vs17x32=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat" $* 
@DOSKEY vs17x64=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat" $* 
@DOSKEY vs19x32=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat" $* 
@DOSKEY vs19x64=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat" $* 
```