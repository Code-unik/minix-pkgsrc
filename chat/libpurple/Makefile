# $NetBSD: Makefile,v 1.54 2013/02/16 11:19:23 wiz Exp $

PKGNAME=	libpurple-${PIDGIN_VERSION}

COMMENT=	Multi-protocol Instant Messaging client backend

.include		"../../chat/libpurple/Makefile.common"

USE_TOOLS+=		msgfmt intltool
CONFIGURE_ENV+=		GCONF_SCHEMA_FILE_DIR=${PREFIX}/share/gconf/schemas/
MAKE_ENV+=		GCONF_SCHEMA_FILE_DIR=${PREFIX}/share/gconf/schemas/

PKGCONFIG_OVERRIDE+=	gaim.pc.in
PKGCONFIG_OVERRIDE+=	libpurple/purple.pc.in

CPPFLAGS.SunOS+=	-D__SunOS

.include "options.mk"

BUILD_DIRS=	m4macros libpurple po share/ca-certs share/sounds

## #post-build:
## #	cp ${WRKSRC}/libpurple/gconf/purple.schemas ${WRKSRC}/purple.schemas

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libidn/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
