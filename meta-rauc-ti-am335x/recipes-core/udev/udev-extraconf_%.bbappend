FILESEXTRAPATHS:prepend:am335x := "${THISDIR}/files:"
SRC_URI:append:am335x = " file://am335x-rauc.rules"

do_install:append:am335x() {
    install -m 0644 ${WORKDIR}/am335x-rauc.rules ${D}${sysconfdir}/udev/mount.blacklist.d/
}
