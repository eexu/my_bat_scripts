:: Function: NotUseEnglishPunctuationsInChineseInputMode
:: Tips:
::  - You must run this .bat file in administer mode as it will change registry value!!!
::  - Before you run the command below, you ought to konw what you are doing!
reg add "HKCU\Software\Microsoft\InputMethod\Settings\CHS" /v UseEnglishPunctuationsInChineseInputMode /d 0 /t REG_DWORD /f