REM set /p SERNO="Enter serial number: RE"
REM set /p MACADDR="Enter MacADDR for x:xx:xx like: 1:23:45 : 8C:1F:64:8D:4x:xx:xx"

REM sct0create.exe -i R-BMC_417_Bootloader.bin -m 8C:1F:64:80:4%MACADDR% -s RE%SERNO%
sct0create.exe -i R-BMC_417_Bootloader\Debug\R-BMC_417_Bootloader.bin -m 8C:1F:64:80:40:00:00 -s RE00000001