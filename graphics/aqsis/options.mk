# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.aqsis
PKG_SUPPORTED_OPTIONS=	qt4
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	qt4

.if !empty(PKG_OPTIONS:Mqt4)
.include "../../x11/qt4-libs/buildlink3.mk"
PLIST.qt4=	yes
.endif
