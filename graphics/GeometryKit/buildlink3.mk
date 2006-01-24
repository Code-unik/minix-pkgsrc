# $NetBSD: buildlink3.mk,v 1.2 2004/09/24 01:56:54 rh Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GEOMETRYKIT_BUILDLINK3_MK:=	${GEOMETRYKIT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	GeometryKit
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NGeometryKit}
BUILDLINK_PACKAGES+=	GeometryKit

.if !empty(GEOMETRYKIT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.GeometryKit+=	GeometryKit>=0.3.1r2nb3
BUILDLINK_RECOMMENDED.GeometryKit?=	GeometryKit>=0.3.1r2nb8
BUILDLINK_PKGSRCDIR.GeometryKit?=	../../graphics/GeometryKit
.endif	# GEOMETRYKIT_BUILDLINK3_MK

.include "../../x11/gnustep-back/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
