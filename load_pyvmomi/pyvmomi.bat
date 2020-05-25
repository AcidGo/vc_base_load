@echo off

:: params
set py_path=C:\Python34
set dir_path=%~dp0

:: echo %py_path%
:: echo %dir_path%
:: pause

:: packages install
cd %dir_path%\packages
%py_path%\Scripts\pip.exe install certifi-2017.7.27.1-py2.py3-none-any.whl
%py_path%\Scripts\pip.exe install chardet-3.0.4-py2.py3-none-any.whl
%py_path%\Scripts\pip.exe install idna-2.6-py2.py3-none-any.whl
%py_path%\Scripts\pip.exe install six-1.11.0-py2.py3-none-any.whl
%py_path%\Scripts\pip.exe install urllib3-1.22-py2.py3-none-any.whl
%py_path%\Scripts\pip.exe install requests-2.18.4-py2.py3-none-any.whl

:: echo "packages installed"
:: pause

:: pyvmomi isntall
cd %dir_path%\pyvmomi-master\
%py_path%\python.exe setup.py install

:: echo "pyvmomi installed"
:: pause

