# $NetBSD$

BUILDLINK_TREE+=	telepathy-logger

.if !defined(TELEPATHY_LOGGER_BUILDLINK3_MK)
TELEPATHY_LOGGER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.telepathy-logger+=	telepathy-logger>=0.1.4
BUILDLINK_PKGSRCDIR.telepathy-logger?=	../../chat/telepathy-logger

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../chat/telepathy-glib/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.endif	# TELEPATHY_LOGGER_BUILDLINK3_MK

BUILDLINK_TREE+=	-telepathy-logger
