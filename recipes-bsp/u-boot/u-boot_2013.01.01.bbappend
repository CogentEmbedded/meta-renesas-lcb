FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://0001-uboot-Silk-board-support.patch \
	file://0002-uboot-net-sh-eth-Remove-definition-of-RX_DESC_SIZE-and-TX_.patch \
	file://0003-uboot-net-sh-eth-Use-memalign-instead-of-orignal-memroy-al.patch \
"

COMPATIBLE_MACHINE = "(silk|porter)"

# MiniMonitor requires u-boot.srec
UBOOT_SREC ?= "u-boot.srec"
UBOOT_SREC_SYMLINK ?= "u-boot-${MACHINE}.srec"
UBOOT_SREC_IMAGE ?= "u-boot-${MACHINE}-${PV}-${PR}.srec"

do_deploy_append() {
	install ${S}/${UBOOT_SREC} ${DEPLOYDIR}/${UBOOT_SREC_IMAGE}

	cd ${DEPLOYDIR}
	rm -f ${UBOOT_SREC} ${UBOOT_SREC_SYMLINK}
	ln -sf ${UBOOT_SREC_IMAGE} ${UBOOT_SREC}
	ln -sf ${UBOOT_SREC_IMAGE} ${UBOOT_SREC_SYMLINK}
}
