# $NetBSD: Makefile,v 1.5 2008/08/07 14:05:56 joerg Exp $
#

DISTNAME=	dev86-0.16.17
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://homepage.ntlworld.com/robert.debath/dev86/
DISTFILES=	Dev86src-0.16.17.tar.gz

MAINTAINER=	pierrick@bs-network.net
HOMEPAGE=	http://www.swissgeeks.com/
COMMENT=	Linux 8086 development environment

CONFLICTS=	bcc-[0-9]*
CONFLICTS+=	bin86-[0-9]*

MAKE_FLAGS+=	MANDIR=${PREFIX}/${PKGMANDIR}
MAKE_ENV+=	DIST=${DESTDIR}

.include "../../mk/bsd.pkg.mk"
