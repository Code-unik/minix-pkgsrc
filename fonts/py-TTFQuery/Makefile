# $NetBSD: Makefile,v 1.12 2012/06/03 22:59:03 wiz Exp $
#

DISTNAME=		TTFQuery-1.0.5
PKGNAME=		${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=		fonts python
MASTER_SITES=		http://pypi.python.org/packages/source/T/TTFQuery/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://ttfquery.sourceforge.net/
COMMENT=		Query TTF font files for metadata and font outlines
LICENSE=		modified-bsd

DEPENDS+=		${PYPKGPREFIX}-fonttools>=2.0b1:../../fonts/py-fonttools

PYDISTUTILSPKG=		yes
PLIST_SUBST=		PYVERSSUFFIX=${PYVERSSUFFIX}

post-install:
	cd ${DESTDIR}${PREFIX}/bin && for f in ttffamily ttffiles ttfgroups ttfmetadata; do \
		${MV} $${f} $${f}${PYVERSSUFFIX}; \
	done

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
