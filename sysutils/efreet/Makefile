# $NetBSD: Makefile,v 1.4 2013/01/26 21:36:47 adam Exp $
#

DISTNAME=	efreet-1.1.0
PKGREVISION=	3
CATEGORIES=	sysutils devel
MASTER_SITES=	http://download.enlightenment.org/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://enlightenment.org/
COMMENT=	Interface Abstraction Library and Toolset

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS=	pkg-config

INSTALLATION_DIRS=	share/doc/efreet

post-install:
	${INSTALL_DATA} ${WRKSRC}/AUTHORS ${WRKSRC}/COPYING \
	    ${DESTDIR}${PREFIX}/share/doc/efreet

.include "../../devel/ecore/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
