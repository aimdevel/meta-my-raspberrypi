KERNEL_FEATURES:append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"

do_deploy:append(){
    install -d ${DEPLOY_DIR_IMAGE}/kernel-dir
    install ${WORKDIR}/deploy-${PN}/fitImage-${INITRAMFS_IMAGE}-${MACHINE}-${MACHINE} ${DEPLOY_DIR_IMAGE}/kernel-dir/
}
