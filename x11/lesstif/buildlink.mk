# $NetBSD: buildlink.mk,v 1.1 2001/06/30 21:09:29 jlam Exp $
#
# This Makefile fragment is included by packages that use lesstif.
#
# To use this Makefile fragment, simply:
#
# (1) Optionally define BUILDLINK_DEPENDS.lesstif to the dependency pattern
#     for the version of lesstif desired.
# (2) Include this Makefile fragment in the package Makefile,
# (3) Add ${BUILDLINK_DIR}/include to the front of the C preprocessor's header
#     search path, and
# (4) Add ${BUILDLINK_DIR}/lib to the front of the linker's library search
#     path.

.if !defined(LESSTIF_BUILDLINK_MK)
LESSTIF_BUILDLINK_MK=	# defined

BUILDLINK_DEPENDS.lesstif?=	lesstif>=0.91.4

.include "../../mk/bsd.prefs.mk"

# On Solaris, assume that /usr/dt contains a valid Motif 2.0-compatible
# installation.
#
.if ${OPSYS} == "SunOS"
_NEED_LESSTIF=	NO
.else
.if exists(${X11BASE}/include/Xm/Xm.h)
_IS_LESSTIF!=	${EGREP} -c LESSTIF ${X11BASE}/include/Xm/Xm.h || ${TRUE}
.if ${_IS_LESSTIF} == "0"
_NEED_LESSTIF=	NO
.else
_NEED_LESSTIF=	YES
.endif
.else
_NEED_LESSTIF=	YES
.endif
.endif

.if ${_NEED_LESSTIF} == "YES"
MOTIFBASE?=	${X11PREFIX}
DEPENDS+=	${BUILDLINK_DEPENDS.lesstif}:../../x11/lesstif
.else
.if ${OPSYS} == "SunOS"
MOTIFBASE?=	/usr/dt
.else
MOTIFBASE?=	${X11BASE}
.endif
.endif

BUILDLINK_PREFIX.lesstif=	${X11PREFIX}
BUILDLINK_FILES.lesstif=	include/Mrm/*
BUILDLINK_FILES.lesstif+=	include/Xm/*
BUILDLINK_FILES.lesstif+=	include/uil/*
BUILDLINK_FILES.lesstif+=	lib/libMrm.*
BUILDLINK_FILES.lesstif+=	lib/libUil.*
BUILDLINK_FILES.lesstif+=	lib/libXm.*

BUILDLINK_TARGETS.lesstif=	lesstif-buildlink
BUILDLINK_TARGETS+=		${BUILDLINK_TARGETS.lesstif}

USE_X11=	# defined
MAKE_ENV+=	MOTIFLIB="${MOTIFLIB}"
LDFLAGS+=	-Wl,-R${MOTIFBASE}/lib
MOTIFLIB?=	-Wl,-R${MOTIFBASE}/lib -Wl,-R${X11BASE}/lib -L${BUILDLINK_DIR}/lib -L${X11BASE}/lib -lXm -lXp

pre-configure: ${BUILDLINK_TARGETS.lesstif}
lesstif-buildlink: _BUILDLINK_USE

.include "../../mk/bsd.buildlink.mk"

.endif	# LESSTIF_BUILDLINK_MK
