#!/bin/sh

cp $1/EVA_SGX_KM_E2.tar.bz2 recipes-kernel/gles-module/gles-kernel-module/
cp $1/EVA_r8a7794_linux_sgx_binaries_gles2.tar.bz2 recipes-graphics/gles-module/gles-user-module/
