@echo off  
:: 关闭输出命令显示

:: 设置为变量延迟，也即读取一条命令后不立即对其赋值，而是在使用该变量时才赋值
Setlocal Enabledelayedexpansion

:: 变量赋值语句，将 str 赋值为空格
set "str= "

:: 首先使用循环和通配符匹配当前目录下的所有文件名
:: 然后将该文件名赋值给 fileName，然后用 ren 命令重命名
:: 其中！！中间的部分为延迟赋值变量的调用，而 %str% 是空格， 单个！应该是空
:: fileName:A=B 就是将 fileName 中的 A 替换为 B
for /f "delims=" %%i in ('dir /b *.*') do (
    set "fileName=%%i" && ren "%%i" "!fileName:%str%=!"
)

:: 为了输出感叹号需要关闭变量延迟
setlocal disabledelayedexpansion
echo.
echo Successful!
echo.
echo This .bat file will be automatically deleted after 3 secends.
echo.
echo Have a good day!
::choice /t 3 /d y /n > nul

del %0  
:: delete itself
