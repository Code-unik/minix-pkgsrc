# $NetBSD: buildlink3.mk,v 1.9 2006/07/08 23:10:37 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBVISUAL_BUILDLINK3_MK:=	${LIBVISUAL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libvisual
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibvisual}
BUILDLINK_PACKAGES+=	libvisual
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libvisual

.if !empty(LIBVISUAL_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libvisual+=	libvisual>=0.4.0
BUILDLINK_PKGSRCDIR.libvisual?=		../../audio/libvisual
.endif	# LIBVISUAL_BUILDLINK3_MK

.include "../../devel/gettext-lib/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
