FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE = "(silk|porter)"

SRC_URI_append = " \
	file://0001-kernel-Silk-board-support.patch \
	file://0002-kernel-silk-fix-ethernet-phy-irq.patch \
	file://0003-kernel-silk-fix-sd-detect.patch \
	file://0004-kernel-Revert-i2c-rcar-Support-ACK-by-HW-auto-restart-after-NACK.patch \
	file://0005-R8A7794-fix-source-clock-for-i2c0.patch \
	file://0006-Rcar-DU-add-RGB-connector.patch \
	file://0007-SILK-add-i2c0.patch \
	file://0008-Porter-board-support.patch \
	file://0009-shmobile-add-atag-dtb-compat.patch \
	file://rcar-gen2-1.9.0-backports/0001-pinctrl-sh-pfc-r8a7794-Add-IRQ8-pin-groups.patch \
	file://rcar-gen2-1.9.0-backports/0002-pinctrl-sh-pfc-r8a7794-Add-EtherB-pins-to-Ethernet-p.patch \
	file://rcar-gen2-1.9.0-backports/0003-pinctrl-sh-pfc-r8a7794-Add-SSI-pin-groups.patch \
	file://rcar-gen2-1.9.0-backports/0004-pinctrl-sh-pfc-r8a7794-Add-audio_clk-pin-groups.patch \
	file://0010-Silk-Add-missing-pins-handle-to-Eth.patch \
	file://0011-Silk-Add-missing-DU-pins.patch \

"

