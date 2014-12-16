FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

do_install_append() {
	cd ${S}/OMXR/lib/

	ln -sf libomxr_core.so.0.0.0 libomxr_core.so.2.0.0
	ln -sf libomxr_mc_cmn.so.0.0.0 libomxr_mc_cmn.so.2.0.0
	ln -sf libomxr_mc_h264d.so.0.0.0 libomxr_mc_h264d.so.2.0.0
	ln -sf libomxr_mc_h264e.so.0.0.0 libomxr_mc_h264e.so.2.0.0
	ln -sf libomxr_mc_vecmn.so.0.0.0 libomxr_mc_vecmn.so.2.0.0
	ln -sf libomxr_mc_vcmn.so.0.0.0 libomxr_mc_vcmn.so.2.0.0
	ln -sf libomxr_mc_vdcmn.so.0.0.0 libomxr_mc_vdcmn.so.2.0.0
	ln -sf libuvcs_dec.so.0.0.0 libuvcs_dec.so.1.0.0
	ln -sf libuvcs_enc.so.0.0.0 libuvcs_enc.so.1.0.0
	ln -sf libvcp3_avcd.so.0.0.0 libvcp3_avcd.so.1.0.0
	ln -sf libvcp3_avce.so.0.0.0 libvcp3_avce.so.1.0.0
	ln -sf libvcp3_mcvd.so.0.0.0 libvcp3_mcvd.so.1.0.0
	ln -sf libvcp3_mcve.so.0.0.0 libvcp3_mcve.so.1.0.0

	# Copy all the symbolic link and lib to destination
	cp -Prf ${S}/OMXR/lib/* ${D}/usr/local/lib
}
