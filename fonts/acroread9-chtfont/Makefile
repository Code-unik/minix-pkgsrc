# $NetBSD: Makefile,v 1.4 2008/09/06 20:50:02 wiz Exp $
#

DISTNAME=	chtfont
CATEGORIES=	fonts
DISTFILES=	FontPack910_cht_i486-linux.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	Asian Font Packs for Acrobat Reader 9 (Chinese Traditional)

DEPENDS+=	acroread9-font-share>=9.1:../../fonts/acroread9-font-share

WRKSRC=		${WRKDIR}/CHTKIT
TAR_FILE=	${WRKSRC}/LANGCHT.TAR

.include "../../fonts/acroread9-font-share/Makefile.common"
