$NetBSD: patch-posix-process_environment.adb,v 1.1.1.1 2004/06/03 10:07:27 shannonjr Exp $

--- posix-process_environment.adb.orig	2002-10-24 02:03:52.000000000 -0600
+++ posix-process_environment.adb
@@ -443,7 +443,7 @@ package body POSIX.Process_Environment i
    procedure Copy_Environment
      (Source : in Environment;
       Target : in out Environment) is
-      T_Source : POSIX_String_List := To_POSIX_String_List (Source);
+      T_Source : constant POSIX_String_List := To_POSIX_String_List (Source);
       T_Target : POSIX_String_List;
       procedure Copy_One (Str : POSIX_String; Done : in out Boolean);
       procedure Copy_One (Str : POSIX_String; Done : in out Boolean) is
@@ -490,7 +490,8 @@ package body POSIX.Process_Environment i
        Undefined : POSIX.POSIX_String := "")
       return POSIX.POSIX_String is
       c_name : POSIX_String := Name & NUL;
-      Result : char_ptr := Getenv (c_name (c_name'First)'Unchecked_Access);
+      Result : constant char_ptr :=
+         Getenv (c_name (c_name'First)'Unchecked_Access);
    begin
       Validate (Name);
       if Result = null then return Undefined; end if;
@@ -568,7 +569,7 @@ package body POSIX.Process_Environment i
          while P.all /= null loop
             --  .... concise but inefficient
             declare
-               S : POSIX_String := Form_POSIX_String (P.all);
+               S : constant POSIX_String := Form_POSIX_String (P.all);
                J : constant Integer := Split_Point (S);
             begin
                Append (Strings, S (1 .. J - 1));
