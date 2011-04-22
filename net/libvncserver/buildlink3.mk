# $NetBSD: buildlink3.mk,v 1.7 2011/04/04 09:13:44 obache Exp $

BUILDLINK_TREE+=	libVNCServer

.if !defined(LIBVNCSERVER_BUILDLINK3_MK)
LIBVNCSERVER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libVNCServer+=	libVNCServer>=0.9.1
BUILDLINK_ABI_DEPENDS.libVNCServer+=	libVNCServer>=0.9.8nb1
BUILDLINK_PKGSRCDIR.libVNCServer?=	../../net/libvncserver

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"

pkgbase := libVNCServer
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.libVNCServer:Mgnutls)
.include "../../security/gnutls/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.libVNCServer:Mlibgcrypt)
.include "../../security/libgcrypt/buildlink3.mk"
.endif

.endif # LIBVNCSERVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-libVNCServer
