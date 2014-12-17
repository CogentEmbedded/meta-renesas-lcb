FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE = "(silk|porter)"

SRC_URI_append = " file://scripts-Makefile.headersinst-install-headers-from-sc.patch"
