FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://0001-desktop-shell-add-option-to-avoid-creating-the-panel.patch \
"

