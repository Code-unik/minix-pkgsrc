# $NetBSD: Makefile,v 1.7 2012/10/03 21:57:54 wiz Exp $
#

DISTNAME=		Net-Dict-2.08
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		net textproc
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/~neilb/Net-Dict/
COMMENT=		Client API for the DICT protocol defined in RFC2229
LICENSE=		${PERL5_LICENSE}

PKG_INSTALLATION_TYPES= overwrite pkgviews

PERL5_PACKLIST=		auto/Net/Dict/.packlist

CONFLICTS=		dict-client-[0-9]*

DEPENDS+=		p5-AppConfig-Std-[0-9]*:../../devel/p5-AppConfig-Std
DEPENDS+=		p5-Tk-[0-9]*:../../x11/p5-Tk

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
