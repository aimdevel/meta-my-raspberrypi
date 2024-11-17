
DEPENDS = "dosfstools-native coreutils-native mtools-native linux-raspberrypi"

LICENSE = "GPL-2.0-or-later"

do_deploy(){
    truncate -s 128MB ${DEPLOY_DIR_IMAGE}/kernel-dir.vfat
    mkfs.vfat -F 32 ${DEPLOY_DIR_IMAGE}/kernel-dir.vfat
    mcopy -i ${DEPLOY_DIR_IMAGE}/kernel-dir.vfat \
        -s ${DEPLOY_DIR_IMAGE}/kernel-dir/* ::/
}

addtask do_deploy after do_install
