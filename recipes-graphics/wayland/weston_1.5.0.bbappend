# Disable v4l2 renderrer as it requires wayland-kms >= d246cd42a7e1117b13e3741b6bde180729547795
# which is not compatiable with our SGX binaries ???
EXTRA_OECONF_append = " --disable-v4l2"
