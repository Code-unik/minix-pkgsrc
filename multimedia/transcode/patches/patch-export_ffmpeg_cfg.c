$NetBSD$

Fix build with ffmpeg 0.11. gentoo patch from Brennan Shacklett

--- export/ffmpeg_cfg.c.orig	2011-11-19 16:50:27.000000000 +0000
+++ export/ffmpeg_cfg.c
@@ -160,9 +160,9 @@ TCConfigEntry lavcopts_conf[]={
     {"vcelim", &lavc_param_chroma_elim_threshold, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, -99, 99},
     {"vpsize", &lavc_param_packet_size, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, 0, 100000000},
     {"vstrict", &lavc_param_strict, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, -99, 99},
-    {"vdpart", &lavc_param_data_partitioning, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_PART},
+    {"vdpart", &lavc_param_data_partitioning, TCCONF_TYPE_FLAG, 0, 0, 1},
 //    {"keyint", &lavc_param_keyint, TCCONF_TYPE_INT, 0, 0, 0},
-    {"gray", &lavc_param_gray, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_PART},
+    {"gray", &lavc_param_gray, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_GRAY},
     {"mpeg_quant", &lavc_param_mpeg_quant, TCCONF_TYPE_FLAG, 0, 0, 1},
     {"vi_qfactor", &lavc_param_vi_qfactor, TCCONF_TYPE_FLOAT, TCCONF_FLAG_RANGE, -31.0, 31.0},
     {"vi_qoffset", &lavc_param_vi_qoffset, TCCONF_TYPE_FLOAT, TCCONF_FLAG_RANGE, 0.0, 31.0},
@@ -211,7 +211,7 @@ TCConfigEntry lavcopts_conf[]={
 #else
     {"aic", &lavc_param_aic, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_AC_PRED},
 #endif    
-    {"umv", &lavc_param_umv, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_H263P_UMV},
+    {"umv", &lavc_param_umv, TCCONF_TYPE_FLAG, 0, 0, 1},
     {"ibias", &lavc_param_ibias, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, -512, 512},
     {"pbias", &lavc_param_pbias, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, -512, 512},
     {"coder", &lavc_param_coder, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, 0, 10},
@@ -223,9 +223,9 @@ TCConfigEntry lavcopts_conf[]={
     {"nr", &lavc_param_noise_reduction, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, 0, 1000000},
     {"qprd", &lavc_param_qp_rd, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_QP_RD},
     {"threads", &lavc_param_threads, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, 1, 16},
-    {"ss", &lavc_param_ss, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_H263P_SLICE_STRUCT},
-    {"svcd_sof", &lavc_param_scan_offset, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_SVCD_SCAN_OFFSET},
-    {"alt", &lavc_param_alt, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_ALT_SCAN},
+    {"ss", &lavc_param_ss, TCCONF_TYPE_FLAG, 0, 0, 1},
+    {"svcd_sof", &lavc_param_scan_offset, TCCONF_TYPE_FLAG, 0, 0, 1},
+    {"alt", &lavc_param_alt, TCCONF_TYPE_FLAG, 0, 0, 1},
     {"ilme", &lavc_param_ilme, TCCONF_TYPE_FLAG, 0, 0, CODEC_FLAG_INTERLACED_ME},
     {"inter_threshold", &lavc_param_inter_threshold, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, -1000000, 1000000},
     {"sc_threshold", &lavc_param_sc_threshold, TCCONF_TYPE_INT, TCCONF_FLAG_RANGE, -1000000, 1000000},
