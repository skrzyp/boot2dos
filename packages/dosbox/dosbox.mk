################################################################################
#
# DosBox
#
################################################################################

DOSBOX_VERSION = r4474
DOSBOX_SITE = svn://svn.code.sf.net/p/dosbox/code-0/dosbox/trunk
DOSBOX_SITE_METHOD = svn
DOSBOX_LICENSE = GPL2
DOSBOX_LICENSE_FILES = COPYING
DOSBOX_AUTORECONF = YES
DOSBOX_DEPENDENCIES = sdl zlib libpng libogg libvorbis sdl_net

DOSBOX_CONF_OPTS=--enable-core-inline --prefix=/usr --enable-dynrec \
     --enable-unaligned_memory --disable-opengl \
     --with-sdl-prefix="$(STAGING_DIR)/usr"

#    CFLAGS="$(TARGET_CFLAGS) $(COMPILER_COMMONS_CFLAGS_NOLTO)" \
#    CXXFLAGS="$(TARGET_CXXFLAGS) $(COMPILER_COMMONS_CXXFLAGS_NOLTO)" \
#    CPPFLAGS="$(TARGET_CPPFLAGS) $(COMPILER_COMMONS_CXXFLAGS_NOLTO)" \
#    LDFLAGS="$(TARGET_LDFLAGS) $(COMPILER_COMMONS_LDFLAGS_NOLTO)"

$(eval $(autotools-package))

