# $NetBSD: Makefile,v 1.12 2012/10/23 19:50:52 asau Exp $

DISTNAME=	bchunk-1.2.0
CATEGORIES=	sysutils
MASTER_SITES=	http://he.fi/bchunk/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://he.fi/bchunk/
COMMENT=	".bin/.cue" CD image converter

MAKE_FLAGS+=	CC=${CC:Q} LD=${CC:Q} CFLAGS=${CFLAGS:M*:Q}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bchunk ${DESTDIR}${PREFIX}/bin/bchunk
	${INSTALL_MAN} ${WRKSRC}/bchunk.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/bchunk.1

.include "../../mk/bsd.pkg.mk"
