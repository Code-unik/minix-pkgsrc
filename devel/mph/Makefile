# $NetBSD: Makefile,v 1.6 2008/04/07 17:44:00 joerg Exp $
#

DISTNAME=	mph-1.2
CATEGORIES=	devel
MASTER_SITES=	http://www.ibiblio.org/pub/Linux/devel/lang/c/

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=	none
COMMENT=	Minimal perfect hashing functionality

INSTALLATION_DIRS=	bin share/doc

do-install:
	for i in emitc mph mphm; do \
		${INSTALL_PROGRAM} ${WRKSRC}/$$i ${DESTDIR}${PREFIX}/bin; \
	done
	${INSTALL_SCRIPT} ${WRKSRC}/mphminm ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/mph.doc ${DESTDIR}${PREFIX}/share/doc

.include "../../mk/bsd.pkg.mk"
