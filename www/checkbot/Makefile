# $NetBSD: Makefile,v 1.31 2012/10/03 21:58:28 wiz Exp $
#

DISTNAME=	checkbot-1.79
PKGREVISION=	5
CATEGORIES=	www net perl5
MASTER_SITES=	http://degraaff.org/checkbot/

MAINTAINER=	abs@NetBSD.org
HOMEPAGE=	http://degraaff.org/checkbot/
COMMENT=	Verify links on a set of HTML pages

DEPENDS+=	p5-MailTools>=1.03:../../mail/p5-MailTools
DEPENDS+=	{perl>=5.10,p5-Net-[0-9]*}:../../net/p5-Net
DEPENDS+=	p5-Time-Duration-[0-9]*:../../time/p5-Time-Duration
DEPENDS+=	p5-URI>=1.10:../../www/p5-URI
DEPENDS+=	p5-libwww>=5.76:../../www/p5-libwww

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=	auto/checkbot/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
