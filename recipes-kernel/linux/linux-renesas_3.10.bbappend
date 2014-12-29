FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE = "(silk|porter)"

SRC_URI_append = " \
	file://0001-kernel-Silk-board-support.patch \
	file://0003-kernel-silk-fix-sd-detect.patch \
	file://0002-kernel-silk-fix-ethernet-phy-irq.patch \
"

