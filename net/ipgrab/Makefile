# $NetBSD: Makefile,v 1.7 2012/10/23 17:18:28 asau Exp $

DISTNAME=	ipgrab-0.9.9
PKGREVISION=	1
CATEGORIES=	net security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ipgrab/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://ipgrab.sourceforge.net/
COMMENT=	Verbose packet sniffer for UNIX hosts

PKG_INSTALLATION_TYPES=	overwrite pkgviews

GNU_CONFIGURE=	yes
USE_TOOLS+=	makeinfo
INFO_FILES=	# PLIST

.include "../../net/libpcap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
