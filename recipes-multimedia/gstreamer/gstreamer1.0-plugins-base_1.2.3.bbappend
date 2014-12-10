FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

VSPFILTER_CONFIGS_append = " file://gstvspfilter-silk.conf"
VSPFILTER_CONFIGS_append = " file://gstvspfilter-porter.conf"
