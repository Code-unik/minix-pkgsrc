# $NetBSD: Makefile,v 1.1.1.1 2011/05/28 08:18:03 cheusov Exp $

PKGNAME=	heirloom-tail-${HEIRLOOM_VER}
CATEGORIES=	textproc
LICENSE=	original-bsd

MAKE_FLAGS+=	SUBDIRS="build tail"

.include "../../sysutils/heirloom-doc/Makefile.common"

DESCR_SRC+=	${.CURDIR}/DESCR

.include "../../devel/heirloom-libcommon/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
