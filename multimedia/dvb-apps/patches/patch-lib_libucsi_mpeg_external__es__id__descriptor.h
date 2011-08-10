$NetBSD$

--- lib/libucsi/mpeg/external_es_id_descriptor.h.orig	2011-06-28 05:50:24.000000000 +0000
+++ lib/libucsi/mpeg/external_es_id_descriptor.h
@@ -51,7 +51,7 @@ static inline struct mpeg_external_es_id
 	if (d->len != (sizeof(struct mpeg_external_es_id_descriptor) - 2))
 		return NULL;
 
-	bswap16((uint8_t*) d + 2);
+	ubswap16((uint8_t*) d + 2);
 
 	return (struct mpeg_external_es_id_descriptor*) d;
 }
