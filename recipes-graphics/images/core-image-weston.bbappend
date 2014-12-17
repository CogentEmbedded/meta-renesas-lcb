# pkg groups for oss codecs
IMAGE_INSTALL_append_rcar-gen2 = ' ${@base_conditional("USE_MULTIMEDIA", "1", " \
    packagegroup-lcb-oss-codecs \
    ", "", d)}'
