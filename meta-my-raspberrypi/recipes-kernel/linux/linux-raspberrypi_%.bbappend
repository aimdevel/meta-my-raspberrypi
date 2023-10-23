FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

#SRC_URI += " file://config-test.cfg "

KBUILD_DEFCONFIG:raspberrypi4-64 = ""
SRC_URI += " file://defconfig "
