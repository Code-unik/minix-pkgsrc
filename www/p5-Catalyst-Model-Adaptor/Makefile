# $NetBSD: Makefile,v 1.11 2012/10/03 21:58:39 wiz Exp $

DISTNAME=	Catalyst-Model-Adaptor-0.10
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/perldoc?Catalyst::Model::Adaptor
COMMENT=	Use a plain class as a Catalyst model
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Catalyst-Runtime-[0-9]*:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-MRO-Compat-[0-9]*:../../devel/p5-MRO-Compat

BUILD_DEPENDS+=	p5-Test-use-ok-[0-9]*:../../devel/p5-Test-use-ok

USE_LANGUAGES=		# empty
PERL5_PACKLIST= 	auto/Catalyst/Model/Adaptor/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
