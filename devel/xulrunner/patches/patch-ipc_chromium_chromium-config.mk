$NetBSD: patch-ipc_chromium_chromium-config.mk,v 1.3 2012/05/08 19:29:36 martin Exp $

# Reported upstream: https://bugzilla.mozilla.org/show_bug.cgi?id=753046

--- ipc/chromium/chromium-config.mk.orig	2012-08-08 20:20:07.000000000 +0000
+++ ipc/chromium/chromium-config.mk
@@ -24,17 +24,6 @@ LOCAL_INCLUDES += \
   -I$(DEPTH)/ipc/ipdl/_ipdlheaders \
   $(NULL)
 
-ifeq ($(OS_ARCH),Darwin) # {
-
-OS_MACOSX = 1
-OS_POSIX = 1
-
-DEFINES += \
-  -DOS_MACOSX=1 \
-  -DOS_POSIX=1 \
-  $(NULL)
-
-else # } {
 ifeq ($(OS_ARCH),WINNT) # {
 OS_LIBS += $(call EXPAND_LIBNAME,psapi shell32 dbghelp)
 
@@ -61,13 +50,65 @@ DEFINES += -DCOMPILER_MSVC
 endif
 
 else # } {
-
-OS_LINUX = 1
 OS_POSIX = 1
+DEFINES += -DOS_POSIX=1
+
+ifeq ($(OS_ARCH),Darwin) # {
+
+OS_MACOSX = 1
+DEFINES += \
+  -DOS_MACOSX=1 \
+  $(NULL)
+
+else # } {
+ifeq ($(OS_ARCH),DragonFly) # {
+
+OS_DRAGONFLY = 1
+OS_BSD = 1
+OS_LIBS += $(call EXPAND_LIBNAME,kvm)
+DEFINES += \
+  -DOS_DRAGONFLY=1 \
+  -DOS_BSD=1 \
+  $(NULL)
+
+else # } {
+ifeq ($(OS_ARCH),FreeBSD) # {
+
+OS_FREEBSD = 1
+OS_BSD = 1
+OS_LIBS += $(call EXPAND_LIBNAME,kvm)
+DEFINES += \
+  -DOS_FREEBSD=1 \
+  -DOS_BSD=1 \
+  $(NULL)
 
+else # } {
+ifeq ($(OS_ARCH),NetBSD) # {
+
+OS_NETBSD = 1
+OS_BSD = 1
+OS_LIBS += $(call EXPAND_LIBNAME,kvm)
+DEFINES += \
+  -DOS_NETBSD=1 \
+  -DOS_BSD=1 \
+  $(NULL)
+
+else # } {
+ifeq ($(OS_ARCH),OpenBSD) # {
+
+OS_OPENBSD = 1
+OS_BSD = 1
+OS_LIBS += $(call EXPAND_LIBNAME,kvm)
+DEFINES += \
+  -DOS_OPENBSD=1 \
+  -DOS_BSD=1 \
+  $(NULL)
+
+else # } {
+
+OS_LINUX = 1
 DEFINES += \
   -DOS_LINUX=1 \
-  -DOS_POSIX=1 \
   $(NULL)
 
 # NB: to stop gcc warnings about exporting template instantiation
@@ -75,4 +116,8 @@ OS_CXXFLAGS := $(filter-out -pedantic,$(
 
 endif # }
 endif # }
+endif # }
+endif # }
+endif # }
+endif # }
 
