# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
MPEG4IP_BUILDLINK3_MK:=	${MPEG4IP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	mpeg4ip
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmpeg4ip}
BUILDLINK_PACKAGES+=	mpeg4ip

.if !empty(MPEG4IP_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.mpeg4ip+=	mpeg4ip>=1.4.1
BUILDLINK_PKGSRCDIR.mpeg4ip?=	../../multimedia/mpeg4ip
.endif	# MPEG4IP_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
