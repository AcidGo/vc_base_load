@echo off


:: dir_path ��ǰ�ű�����Ŀ¼�ľ���·��
:: des_path ָ����װ��pythonĿ¼�ľ���·��

set dir_path=%~dp0
set des_path=C:\Python34



:: �ж�ϵͳλ��

if exist "C:\Program Files (x86)" (
    goto x64
) else (
    goto x86
)

:: û�����еģ��˳��ű�
:: �����������������ڴ˴����
exit


:: ����ϵͳλ���������Ӧ��msi��

:x86
set src_path=%dir_path%data\python-3.4.4.msi
goto install

:x64
set src_path=%dir_path%data\python-3.4.4.amd64.msi
goto install


:: ��װ
:: /i ��msi���а�װ
:: /qn ���û�����ķǽ���ʽ
:: /norestart ��װ��ɺ󲻽�����������ȫѡ���ֹ����������
:: TARGETDIR msi����װ��ָ��·��
:: ALLUSERS �Ƿ�Ϊ�����û���װ��1Ϊ�ǡ�

:install
msiexec /i "%src_path%" /qn /norestart TARGETDIR="%des_path%" ALLUSERS=1