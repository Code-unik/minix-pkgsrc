# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LWP_BUILDLINK3_MK:=	${LWP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	lwp
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlwp}
BUILDLINK_PACKAGES+=	lwp

.if !empty(LWP_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.lwp+=	lwp>=1.6
BUILDLINK_PKGSRCDIR.lwp?=	../../devel/lwp
.endif	# LWP_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
