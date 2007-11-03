# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBCONFIG_BUILDLINK3_MK:=	${LIBCONFIG_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libconfig
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibconfig}
BUILDLINK_PACKAGES+=	libconfig
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libconfig

.if ${LIBCONFIG_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libconfig+=	libconfig>=1.1.3
BUILDLINK_PKGSRCDIR.libconfig?=		../../devel/libconfig
.endif	# LIBCONFIG_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
