$NetBSD$

--- ld/emulparams/i386minix.sh.orig	Fri Jul  6 01:31:04 2012
+++ ld/emulparams/i386minix.sh
@@ -0,0 +1,6 @@
+SCRIPT_NAME=aout
+OUTPUT_FORMAT="a.out-i386-minix"
+TARGET_PAGE_SIZE=1
+TEXT_START_ADDR=0
+NONPAGED_TEXT_START_ADDR=0
+ARCH=i386
