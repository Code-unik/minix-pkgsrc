# $NetBSD: Makefile,v 1.3 2013/01/31 16:03:34 taca Exp $

DISTNAME=	rack-cache-1.2
PKGREVISION=	1
CATEGORIES=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rack.github.com/
COMMENT=	HTTP Caching for Rack
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-rack14>=0.4:../../www/ruby-rack14

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
