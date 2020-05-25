@echo off


:: dir_path 当前脚本所在目录的绝对路径
:: des_path 指定安装的python目录的绝对路径

set dir_path=%~dp0
set des_path=C:\Python34



:: 判断系统位数

if exist "C:\Program Files (x86)" (
    goto x64
) else (
    goto x86
)

:: 没有命中的，退出脚本
:: 其他过滤条件可以在此处添加
exit


:: 根据系统位数，分配对应的msi包

:x86
set src_path=%dir_path%data\python-3.4.4.msi
goto install

:x64
set src_path=%dir_path%data\python-3.4.4.amd64.msi
goto install


:: 安装
:: /i 对msi进行安装
:: /qn 无用户界面的非交互式
:: /norestart 安装完成后不进行重启。安全选项，防止发生重启。
:: TARGETDIR msi包安装的指定路径
:: ALLUSERS 是否为所有用户安装，1为是。

:install
msiexec /i "%src_path%" /qn /norestart TARGETDIR="%des_path%" ALLUSERS=1