FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " file://0001-uboot-Silk-board-support.patch"

##COMPATIBLE_MACHINE = "(alt|gose|koelsch|lager|silk)"
##COMPATIBLE_MACHINE_silk = "silk"
COMPATIBLE_MACHINE = "(silk|porter)"
