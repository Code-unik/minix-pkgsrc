# $NetBSD: Makefile,v 1.6 2012/10/28 06:31:00 asau Exp $

DISTNAME=	easy-thumbnails-1.2
PKGNAME=	${PYPKGPREFIX}-django-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	http://pypi.python.org/packages/source/e/easy-thumbnails/

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	https://github.com/SmileyChris/easy-thumbnails
COMMENT=	Easy thumbnails for Django
LICENSE=	modified-bsd

PYDISTUTILSPKG=		yes
USE_LANGUAGES=		# empty

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
