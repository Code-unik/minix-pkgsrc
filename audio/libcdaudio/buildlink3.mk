# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBCDAUDIO_BUILDLINK3_MK:=	${LIBCDAUDIO_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libcdaudio
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibcdaudio}
BUILDLINK_PACKAGES+=	libcdaudio

.if !empty(LIBCDAUDIO_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libcdaudio+=		libcdaudio>=0.99.4nb1
BUILDLINK_PKGSRCDIR.libcdaudio?=	../../audio/libcdaudio
.endif	# LIBCDAUDIO_BUILDLINK3_MK


BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
