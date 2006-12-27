# $NetBSD: buildlink3.mk,v 1.6 2006/07/08 23:11:17 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
XVIEW_LIB_BUILDLINK3_MK:=	${XVIEW_LIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	xview-lib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxview-lib}
BUILDLINK_PACKAGES+=	xview-lib
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}xview-lib

.if !empty(XVIEW_LIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.xview-lib+=	xview-lib>=3.2.1
BUILDLINK_ABI_DEPENDS.xview-lib?=	xview-lib>=3.2.1nb6
BUILDLINK_PKGSRCDIR.xview-lib?=	../../x11/xview-lib
.endif	# XVIEW_LIB_BUILDLINK3_MK

.include "../../x11/libX11/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
