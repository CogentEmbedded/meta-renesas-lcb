#!/bin/sh

if [ ! -d $1/R-Car_Series_Evaluation_Software_Package_for_Linux ]
then
  tar -C $1 -zxf $1/R-Car_Series_Evaluation_Software_Package_for_Linux-*.tar.gz
fi

if [ ! -d $1/R-Car_Series_Evaluation_Software_Package_of_Linux_Drivers ]
then
  tar -C $1 -zxf $1/R-Car_Series_Evaluation_Software_Package_of_Linux_Drivers-*.tar.gz
fi

TMP=`mktemp -d`

cp -rf $1/R-Car_Series_Evaluation_Software_Package_of_Linux_Drivers/mmp_reference_lib_v150_eva/EVARCH2M2MMPRDL001_1_5_0/RCH2M2MMPRDL001 $TMP
cp -rf $1/R-Car_Series_Evaluation_Software_Package_for_Linux/mmp_reference_lib_m2e2_v150_eva/EVARCH2M2MMPRLL001_1_5_0/RCH2M2MMPRLL001 $TMP

KERNEL_MODULES="$TMP/RCH2M2MMPRDL001"
tar -C $KERNEL_MODULES/fdpm/fdpm-module/files/ -jcf fdpm-kernel.tar.bz2 .
tar -C $KERNEL_MODULES/mmngr/mmngr-module/files/ -jcf mmngr-kernel.tar.bz2 .
tar -C $KERNEL_MODULES/mmngrbuf/mmngrbuf-module/files/ -jcf mmngrbuf-kernel.tar.bz2 .
tar -C $KERNEL_MODULES/s3ctl/s3ctl-module/files/ -jcf s3ctl-kernel.tar.bz2 .
tar -C $KERNEL_MODULES/vspm/vspm-module/files/ -jcf vspm-kernel.tar.bz2 .

USER_MODULES="$TMP/RCH2M2MMPRLL001"
tar -C $USER_MODULES/fdpm/fdpm-module/files/ -jcf fdpm.tar.bz2 .
tar -C $USER_MODULES/mmngr/mmngr-module/files/ -jcf mmngr.tar.bz2 .
tar -C $USER_MODULES/mmngrbuf/mmngrbuf-module/files/ -jcf mmngrbuf.tar.bz2 .
tar -C $USER_MODULES/s3ctl/s3ctl-module/files/ -jcf s3ctl.tar.bz2 .
tar -C $USER_MODULES/vspm/vspm-module/files/ -jcf vspm.tar.bz2 .

rm -rf $TMP/*

mv fdpm-kernel.tar.bz2 recipes-kernel/fdpm-modules/files
mv mmngr-kernel.tar.bz2 recipes-kernel/mmngr-module/files/mmngr.tar.bz2
mv mmngrbuf-kernel.tar.bz2 recipes-kernel/mmngr-module/files/mmngrbuf.tar.bz2
mv s3ctl-kernel.tar.bz2 recipes-kernel/s3ctl-module/files
mv vspm-kernel.tar.bz2 recipes-kernel/vspm-module/files

mv fdpm.tar.bz2 recipes-multimedia/fdpm-module/files
mv mmngr.tar.bz2 recipes-multimedia/mmngr-module/files
mv mmngrbuf.tar.bz2 recipes-multimedia/mmngr-module/files
mv s3ctl.tar.bz2 recipes-multimedia/s3ctl-module/files
mv vspm.tar.bz2 recipes-multimedia/vspm-module/files/vspm-user.tar.bz2

OMXTMP=`mktemp -d`
cp -a $1/R-Car_Series_Evaluation_Software_Package_for_Linux/omx_video_m2e2_v150_eva/* $OMXTMP
cp -a $1/R-Car_Series_Evaluation_Software_Package_of_Linux_Drivers/omx_video_v150_eva/* $OMXTMP

unzip -q -d $TMP $OMXTMP/EVARTM0AC0000XCMCTL20SL32C.zip
mv $TMP/EVARTM0AC0000XCMCTL20SL32C $TMP/RTM0AC0000XCMCTL20SL32C
tar zxf $TMP/RTM0AC0000XCMCTL20SL32C/Software.tar.gz -C $TMP/RTM0AC0000XCMCTL20SL32C/
rm $TMP/RTM0AC0000XCMCTL20SL32C/Software.tar.gz
tar -C $TMP/ -jcf RTM0AC0000XCMCTL20SL32C.tar.bz2 .
rm -rf $TMP/*
mv RTM0AC0000XCMCTL20SL32C.tar.bz2 recipes-multimedia/omx-module/files/

unzip -q -d $TMP $OMXTMP/EVARTM0AC0000XV264D20SL32C.zip
mv $TMP/EVARTM0AC0000XV264D20SL32C $TMP/RTM0AC0000XV264D20SL32C
tar zxf $TMP/RTM0AC0000XV264D20SL32C/Software.tar.gz -C $TMP/RTM0AC0000XV264D20SL32C
rm $TMP/RTM0AC0000XV264D20SL32C/Software.tar.gz
tar -C $TMP/ -jcf RTM0AC0000XV264D20SL32C.tar.bz2 .
rm -rf $TMP/*
mv RTM0AC0000XV264D20SL32C.tar.bz2 recipes-multimedia/omx-module/files/

unzip -q -d $TMP $OMXTMP/EVARTM0AC0000XV264E20SL32C.zip
mv $TMP/EVARTM0AC0000XV264E20SL32C $TMP/RTM0AC0000XV264E20SL32C
tar zxf $TMP/RTM0AC0000XV264E20SL32C/Software.tar.gz -C $TMP/RTM0AC0000XV264E20SL32C
rm $TMP/RTM0AC0000XV264E20SL32C/Software.tar.gz
tar -C $TMP/ -jcf RTM0AC0000XV264E20SL32C.tar.bz2 .
rm -rf $TMP/*
mv RTM0AC0000XV264E20SL32C.tar.bz2 recipes-multimedia/omx-module/files/

unzip -q -d $TMP $OMXTMP/EVARTM0AC0000XVCMND20SL32C.zip
mv $TMP/EVARTM0AC0000XVCMND20SL32C $TMP/RTM0AC0000XVCMND20SL32C
tar zxf $TMP/RTM0AC0000XVCMND20SL32C/Software.tar.gz -C $TMP/RTM0AC0000XVCMND20SL32C
rm $TMP/RTM0AC0000XVCMND20SL32C/Software.tar.gz
tar -C $TMP/ -jcf RTM0AC0000XVCMND20SL32C.tar.bz2 .
rm -rf $TMP/*
mv RTM0AC0000XVCMND20SL32C.tar.bz2 recipes-multimedia/omx-module/files/

unzip -q -d $TMP $OMXTMP/EVARTM0AC0000XVCMNE20SL32C.zip
mv $TMP/EVARTM0AC0000XVCMNE20SL32C $TMP/RTM0AC0000XVCMNE20SL32C
tar zxf $TMP/RTM0AC0000XVCMNE20SL32C/Software.tar.gz -C $TMP/RTM0AC0000XVCMNE20SL32C
rm $TMP/RTM0AC0000XVCMNE20SL32C/Software.tar.gz
tar -C $TMP/ -jcf RTM0AC0000XVCMNE20SL32C.tar.bz2 .
rm -rf $TMP/*
mv RTM0AC0000XVCMNE20SL32C.tar.bz2 recipes-multimedia/omx-module/files/

unzip -q -d $TMP $OMXTMP/RTM0AC0000UVCSCMN1SL32C.zip
mv $TMP/RTM0AC0000UVCSCMN1SL32C $TMP/uvcs
tar -C $TMP/ -jcf uvcs-kernel.tar.bz2 .
rm -rf $TMP
mv uvcs-kernel.tar.bz2 recipes-kernel/uvcs-module/files

rm -rf $OMXTMP
