# $NetBSD: buildlink3.mk,v 1.1 2005/03/29 18:47:52 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
UIM_BUILDLINK3_MK:=	${UIM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	uim
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nuim}
BUILDLINK_PACKAGES+=	uim

.if !empty(UIM_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.uim+=		uim>=0.4.6
BUILDLINK_RECOMMENDED.uim?=	uim>=1.0.1nb1
BUILDLINK_PKGSRCDIR.uim?=	../../inputmethod/uim
.endif  # UIM_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
