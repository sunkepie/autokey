#!/bin/sh


cfg0=`cat /sys/fsl_otp/HW_OCOTP_CFG0`
cfg1=`cat /sys/fsl_otp/HW_OCOTP_CFG1`

md5res=`echo "root"${cfg0:2}${cfg1:2}"elite" | md5sum`

echo "root:"${md5res:0:8} | chapasswd
