# $NetBSD: Makefile,v 1.10 2013/02/06 23:23:33 jperkin Exp $

DISTNAME=	printer-applet-${_KDE_VERSION}
PKGREVISION=	7
CATEGORIES=	print
COMMENT=	KDE printer applet

.include "../../meta-pkgs/kde4/Makefile.kde4"

#make sure cmake picks up the same Python version as pkgsrc
CMAKE_ARGS+=	-DPYTHON_EXECUTABLE:FILEPATH=${PYTHONBIN}

REPLACE_PYTHON+=	*.py

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../lang/python/application.mk"
.include "../../print/py-cups/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../x11/py-kde4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
