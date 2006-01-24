# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/10/14 21:54:57 jmmv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
ISO_CODES_BUILDLINK3_MK:=	${ISO_CODES_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	iso-codes
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Niso-codes}
BUILDLINK_PACKAGES+=	iso-codes

.if !empty(ISO_CODES_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.iso-codes+=	iso-codes>=0.48
BUILDLINK_RECOMMENDED.iso-codes?=	iso-codes>=0.48nb1
BUILDLINK_PKGSRCDIR.iso-codes?=	../../textproc/iso-codes
.endif	# ISO_CODES_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
