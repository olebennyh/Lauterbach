@ECHO OFF
echo "add PATH for 'STM32_Programmer_CLI.exe'
set PATH=%PATH%;C:\Program Files\STMicroelectronics\STM32Cube\STM32CubeProgrammer\bin
echo "**************************************************************"
echo "* Setting OptionBytes --> 0xAA ---> remove protection if set *"
echo "**************************************************************"
rem STM32_Programmer_CLI.exe -c port=SWD mode=normal -ob rdp=0xAA
STM32_Programmer_CLI.exe -c port=SWD mode=normal -rdu
echo "***************************************************************"
echo "* program sector_0.bin to FLASH address: 0x08000000 *"
echo "***************************************************************"
STM32_Programmer_CLI.exe -c port=SWD mode=normal --download  sector_0.bin 0x08000000
