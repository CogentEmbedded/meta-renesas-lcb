FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE = "(silk|porter)"

SRC_URI_append = " file://0001-kernel-Silk-board-support.patch"

