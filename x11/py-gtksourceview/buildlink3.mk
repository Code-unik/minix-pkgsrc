# $NetBSD$

BUILDLINK_TREE+=	py_gtksourceview

.if !defined(PY_GTKSOURCEVIEW_BUILDLINK3_MK)
PY_GTKSOURCEVIEW_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.py_gtksourceview+=	${PYPKGPREFIX}-gtksourceview>=2.8.0nb1
BUILDLINK_PKGSRCDIR.py_gtksourceview?=	../../x11/py-gtksourceview

#.include "../../devel/py-gobject-shared/buildlink3.mk"
#.include "../../devel/glib2/buildlink3.mk"
.endif # PY_GTKSOURCEVIEW_BUILDLINK3_MK

BUILDLINK_TREE+=	-py_gtksourceview
