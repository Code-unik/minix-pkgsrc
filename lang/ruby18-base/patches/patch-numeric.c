$NetBSD$

Fix bignum problem on OS X 10.8, clang.

--- numeric.c.orig	2011-12-10 12:17:27.000000000 +0000
+++ numeric.c
@@ -2161,7 +2161,7 @@ fix_mul(x, y)
     VALUE x, y;
 {
     if (FIXNUM_P(y)) {
-#ifdef __HP_cc
+#if defined(__HP_cc) || defined(__clang__)
         /* avoids an optimization bug of HP aC++/ANSI C B3910B A.06.05 [Jul 25 2005] */
         volatile
 #endif
@@ -2319,9 +2319,9 @@ int_pow(x, y)
     y &= ~1;
     do {
 	while (y % 2 == 0) {
-	    long x2 = x * x;
+	    volatile long x2 = x * x;
 	    if (x2/x != x || !POSFIXABLE(x2)) {
-		VALUE v;
+		volatile VALUE v;
 	      bignum:
 		v = rb_big_pow(rb_int2big(x), LONG2NUM(y));
 		if (z != 1) v = rb_big_mul(rb_int2big(neg ? -z : z), v);
@@ -2331,7 +2331,7 @@ int_pow(x, y)
 	    y >>= 1;
 	}
 	{
-	    long xz = x * z;
+	    volatile long xz = x * z;
 	    if (!POSFIXABLE(xz) || xz / x != z) {
 		goto bignum;
 	    }
