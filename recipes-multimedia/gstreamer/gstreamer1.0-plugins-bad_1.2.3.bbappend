require meta-rcar-gen2/include/multimedia-control.inc

DEPENDS_append_rcar-gen2 = " ${@base_conditional('USE_MULTIMEDIA', '1', 'faac', '', d)}"
PACKAGECONFIG_append_rcar-gen2 = " ${@base_conditional('USE_MULTIMEDIA', '1', 'faac', '', d)}"
