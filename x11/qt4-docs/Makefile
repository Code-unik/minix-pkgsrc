# $NetBSD: Makefile,v 1.26 2013/02/06 23:24:17 jperkin Exp $

PKGNAME=	qt4-docs-${QTVERSION}
PKGREVISION=	2
COMMENT=	Documentation for the QT C++ X GUI toolkit

.include "../../x11/qt4-libs/Makefile.common"
NO_CONFIGURE=		yes
NO_BUILD=		yes
PLIST_SRC=		${WRKDIR}/PLIST

INSTALLATION_DIRS=	${QTPREFIX}

do-install:
	cp -R ${WRKSRC}/doc ${DESTDIR}${QTPREFIX}
	cd ${DESTDIR}${PREFIX}; find qt4/doc -type f -print > ${WRKDIR}/PLIST

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
