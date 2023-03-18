#!/bin/bash

cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/Makefile  .  -rf


cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/arch/arm/cpu/armv7/start.S  arch/arm/cpu/armv7/start.S  -rf

cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/arch/arm/cpu/u-boot.lds  arch/arm/cpu/u-boot.lds  -rf



cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/board/samsung/goni  board/samsung/  -rf



cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/include/s5pc110.h  include/ -rf


cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/include/configs/s5p_goni.h  include/configs/s5p_goni.h -rf



cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/arch/arm/lib/crt0.S  arch/arm/lib/. -rf


cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/include/movi.h   include/. -rf


cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/arch/arm/cpu/armv7/s5p-common/cpu_info.c   arch/arm/cpu/armv7/s5p-common/cpu_info.c  -rf



cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/arch/arm/cpu/armv7/s5pc1xx/clock.c  arch/arm/cpu/armv7/s5pc1xx/clock.c -fr



cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/arch/arm/include/asm/arch-s5pc1xx/cpu.h  arch/arm/include/asm/arch-s5pc1xx/cpu.h



cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/arch/arm/lib/board.c arch/arm/lib/board.c -rf



# sd mmc  drivers
cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/drivers/mmc/*        drivers/mmc/. -rf
cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/include/s3c_hsmmc.h  include/ -rf
cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/include/mmc.h        include/ -rf
cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/common/cmd_mmc.c     common/ -rf


# net driver
cp /mnt/hgfs/linux_win_shared/u-boot-2013_for_samsung/u-boot-2013.10/net/eth.c             net/eth.c  -rf
echo $#  
if [[ $# -eq 0 ]];then
    make distclean
    make s5p_goni_config
fi

make

