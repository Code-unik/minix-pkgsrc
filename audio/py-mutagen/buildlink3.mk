# $NetBSD: buildlink3.mk,v 1.3 2009/03/20 17:30:09 joerg Exp $

BUILDLINK_TREE+=	py-mutagen

.if !defined(PY_MUTAGEN_BUILDLINK3_MK)
PY_MUTAGEN_BUILDLINK3_MK:=

.  include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.py-mutagen+=	${PYPKGPREFIX}-mutagen>=1.9
BUILDLINK_PKGSRCDIR.py-mutagen?=	../../audio/py-mutagen
.endif # PY_MUTAGEN_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-mutagen
