#!/bin/sh

if [ ! -d $1/R-Car_Series_Evaluation_Software_Package_for_Linux ]
then
  tar -C $1 -zxf $1/R-Car_Series_Evaluation_Software_Package_for_Linux-*.tar.gz
fi

if [ ! -d $1/R-Car_Series_Evaluation_Software_Package_of_Linux_Drivers ]
then
  tar -C $1 -zxf $1/R-Car_Series_Evaluation_Software_Package_of_Linux_Drivers-*.tar.gz
fi

cp $1/R-Car_Series_Evaluation_Software_Package_of_Linux_Drivers/sgx_gles2_m2_v115_eva/EVARTM0RC7791GLDE0001SL34C/EVA_SGX_KM_M2.tar.bz2 recipes-kernel/gles-module/gles-kernel-module/
cp $1/R-Car_Series_Evaluation_Software_Package_for_Linux/sgx_gles2_m2_v115_eva/EVARTM0RC7791GLRE0001SL34C/release/EVA_r8a7791_linux_sgx_binaries_gles2.tar.bz2 recipes-graphics/gles-module/gles-user-module/
