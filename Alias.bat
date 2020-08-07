@DOSKEY ls=DIR $* 
@DOSKEY cp=COPY $* 
@DOSKEY xcp=XCOPY $*
@DOSKEY mv=MOVE $* 
@DOSKEY clear=CLS
@DOSKEY vs15x32=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86 $* 
@DOSKEY vs15x64=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64 $* 
@DOSKEY vs17x32=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat" $* 
@DOSKEY vs17x64=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat" $* 
@DOSKEY vs19x32=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat" $* 
@DOSKEY vs19x64=%comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat" $* 
@DOSKEY h=DOSKEY /HISTORY
@DOSKEY alias=if ".$*." == ".." ( DOSKEY /MACROS ) else ( DOSKEY $* )