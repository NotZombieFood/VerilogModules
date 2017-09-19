/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Verilog/Lab2_exercise_4/Exercise_2.v";
static int ng1[] = {3, 0};
static int ng2[] = {2, 0};
static int ng3[] = {1, 0};
static int ng4[] = {0, 0};



static void Cont_35_0(char *t0)
{
    char t5[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_add(t5, 6, t3, 4, t4, 4);
    t2 = (t0 + 1368U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 6, t5, 6, t6, 1);
    t2 = (t0 + 4576);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t11, 0, 8);
    t12 = 63U;
    t13 = t12;
    t14 = (t7 + 4);
    t15 = *((unsigned int *)t7);
    t12 = (t12 & t15);
    t16 = *((unsigned int *)t14);
    t13 = (t13 & t16);
    t17 = (t11 + 4);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t12);
    t19 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t19 | t13);
    xsi_driver_vfirst_trans(t2, 0, 5);
    t20 = (t0 + 4464);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Cont_36_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 5);
    t8 = (t7 & 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 5);
    t11 = (t10 & 1);
    *((unsigned int *)t2) = t11;
    t12 = (t0 + 4640);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 1U;
    t18 = t17;
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t4);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 0);
    t25 = (t0 + 4480);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Cont_39_2(char *t0)
{
    char t4[8];
    char t8[8];
    char t11[8];
    char t25[8];
    char t57[8];
    char t60[8];
    char t74[8];
    char t106[8];
    char t109[8];
    char t125[8];
    char t129[8];
    char t163[8];
    char t167[8];
    char t199[8];
    char t200[8];
    char t203[8];
    char t219[8];
    char t223[8];
    char t255[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t58;
    char *t59;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t107;
    char *t108;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    char *t126;
    char *t127;
    char *t128;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    char *t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    int t153;
    int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    char *t162;
    char *t164;
    char *t165;
    char *t166;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    char *t171;
    char *t172;
    char *t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    char *t181;
    char *t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    int t191;
    int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    char *t201;
    char *t202;
    char *t204;
    char *t205;
    char *t206;
    char *t207;
    char *t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    char *t217;
    char *t218;
    char *t220;
    char *t221;
    char *t222;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    char *t227;
    char *t228;
    char *t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    char *t237;
    char *t238;
    unsigned int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    unsigned int t244;
    unsigned int t245;
    unsigned int t246;
    int t247;
    int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    char *t256;
    char *t257;
    char *t258;
    char *t259;
    char *t260;
    unsigned int t261;
    unsigned int t262;
    char *t263;
    unsigned int t264;
    unsigned int t265;
    char *t266;
    unsigned int t267;
    unsigned int t268;
    char *t269;

LAB0:    t1 = (t0 + 4144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t5 = (t2 + 72U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t4, 7, t3, t6, 2, t7, 32, 1);
    t9 = (t0 + 1048U);
    t10 = *((char **)t9);
    t9 = (t0 + 1008U);
    t12 = (t9 + 72U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t11, 7, t10, t13, 2, t14, 32, 1);
    memset(t8, 0, 8);
    t15 = (t8 + 4);
    t16 = (t11 + 4);
    t17 = *((unsigned int *)t11);
    t18 = (~(t17));
    *((unsigned int *)t8) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB5;

LAB4:    t23 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t23 & 127U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 127U);
    t26 = *((unsigned int *)t4);
    t27 = *((unsigned int *)t8);
    t28 = (t26 & t27);
    *((unsigned int *)t25) = t28;
    t29 = (t4 + 4);
    t30 = (t8 + 4);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t29);
    t33 = *((unsigned int *)t30);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB6;

LAB7:
LAB8:    t58 = (t0 + 1048U);
    t59 = *((char **)t58);
    t58 = (t0 + 1008U);
    t61 = (t58 + 72U);
    t62 = *((char **)t61);
    t63 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t60, 7, t59, t62, 2, t63, 32, 1);
    memset(t57, 0, 8);
    t64 = (t57 + 4);
    t65 = (t60 + 4);
    t66 = *((unsigned int *)t60);
    t67 = (~(t66));
    *((unsigned int *)t57) = t67;
    *((unsigned int *)t64) = 0;
    if (*((unsigned int *)t65) != 0)
        goto LAB10;

LAB9:    t72 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t72 & 127U);
    t73 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t73 & 127U);
    t75 = *((unsigned int *)t25);
    t76 = *((unsigned int *)t57);
    t77 = (t75 & t76);
    *((unsigned int *)t74) = t77;
    t78 = (t25 + 4);
    t79 = (t57 + 4);
    t80 = (t74 + 4);
    t81 = *((unsigned int *)t78);
    t82 = *((unsigned int *)t79);
    t83 = (t81 | t82);
    *((unsigned int *)t80) = t83;
    t84 = *((unsigned int *)t80);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB11;

LAB12:
LAB13:    t107 = (t0 + 1048U);
    t108 = *((char **)t107);
    t107 = (t0 + 1008U);
    t110 = (t107 + 72U);
    t111 = *((char **)t110);
    t112 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t109, 7, t108, t111, 2, t112, 32, 1);
    memset(t106, 0, 8);
    t113 = (t106 + 4);
    t114 = (t109 + 4);
    t115 = *((unsigned int *)t109);
    t116 = (~(t115));
    *((unsigned int *)t106) = t116;
    *((unsigned int *)t113) = 0;
    if (*((unsigned int *)t114) != 0)
        goto LAB15;

LAB14:    t121 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t121 & 127U);
    t122 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t122 & 127U);
    t123 = (t0 + 1048U);
    t124 = *((char **)t123);
    t123 = (t0 + 1008U);
    t126 = (t123 + 72U);
    t127 = *((char **)t126);
    t128 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t125, 7, t124, t127, 2, t128, 32, 1);
    t130 = *((unsigned int *)t106);
    t131 = *((unsigned int *)t125);
    t132 = (t130 & t131);
    *((unsigned int *)t129) = t132;
    t133 = (t106 + 4);
    t134 = (t125 + 4);
    t135 = (t129 + 4);
    t136 = *((unsigned int *)t133);
    t137 = *((unsigned int *)t134);
    t138 = (t136 | t137);
    *((unsigned int *)t135) = t138;
    t139 = *((unsigned int *)t135);
    t140 = (t139 != 0);
    if (t140 == 1)
        goto LAB16;

LAB17:
LAB18:    t161 = (t0 + 1048U);
    t162 = *((char **)t161);
    t161 = (t0 + 1008U);
    t164 = (t161 + 72U);
    t165 = *((char **)t164);
    t166 = ((char*)((ng4)));
    xsi_vlog_generic_get_index_select_value(t163, 7, t162, t165, 2, t166, 32, 1);
    t168 = *((unsigned int *)t129);
    t169 = *((unsigned int *)t163);
    t170 = (t168 & t169);
    *((unsigned int *)t167) = t170;
    t171 = (t129 + 4);
    t172 = (t163 + 4);
    t173 = (t167 + 4);
    t174 = *((unsigned int *)t171);
    t175 = *((unsigned int *)t172);
    t176 = (t174 | t175);
    *((unsigned int *)t173) = t176;
    t177 = *((unsigned int *)t173);
    t178 = (t177 != 0);
    if (t178 == 1)
        goto LAB19;

LAB20:
LAB21:    memset(t199, 0, 8);
    xsi_vlog_unsigned_add(t199, 7, t74, 7, t167, 7);
    t201 = (t0 + 1048U);
    t202 = *((char **)t201);
    t201 = (t0 + 1008U);
    t204 = (t201 + 72U);
    t205 = *((char **)t204);
    t206 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t203, 7, t202, t205, 2, t206, 32, 1);
    memset(t200, 0, 8);
    t207 = (t200 + 4);
    t208 = (t203 + 4);
    t209 = *((unsigned int *)t203);
    t210 = (~(t209));
    *((unsigned int *)t200) = t210;
    *((unsigned int *)t207) = 0;
    if (*((unsigned int *)t208) != 0)
        goto LAB23;

LAB22:    t215 = *((unsigned int *)t200);
    *((unsigned int *)t200) = (t215 & 127U);
    t216 = *((unsigned int *)t207);
    *((unsigned int *)t207) = (t216 & 127U);
    t217 = (t0 + 1048U);
    t218 = *((char **)t217);
    t217 = (t0 + 1008U);
    t220 = (t217 + 72U);
    t221 = *((char **)t220);
    t222 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t219, 7, t218, t221, 2, t222, 32, 1);
    t224 = *((unsigned int *)t200);
    t225 = *((unsigned int *)t219);
    t226 = (t224 & t225);
    *((unsigned int *)t223) = t226;
    t227 = (t200 + 4);
    t228 = (t219 + 4);
    t229 = (t223 + 4);
    t230 = *((unsigned int *)t227);
    t231 = *((unsigned int *)t228);
    t232 = (t230 | t231);
    *((unsigned int *)t229) = t232;
    t233 = *((unsigned int *)t229);
    t234 = (t233 != 0);
    if (t234 == 1)
        goto LAB24;

LAB25:
LAB26:    memset(t255, 0, 8);
    xsi_vlog_unsigned_add(t255, 7, t199, 7, t223, 7);
    t256 = (t0 + 4704);
    t257 = (t256 + 56U);
    t258 = *((char **)t257);
    t259 = (t258 + 56U);
    t260 = *((char **)t259);
    memset(t260, 0, 8);
    t261 = 127U;
    t262 = t261;
    t263 = (t255 + 4);
    t264 = *((unsigned int *)t255);
    t261 = (t261 & t264);
    t265 = *((unsigned int *)t263);
    t262 = (t262 & t265);
    t266 = (t260 + 4);
    t267 = *((unsigned int *)t260);
    *((unsigned int *)t260) = (t267 | t261);
    t268 = *((unsigned int *)t266);
    *((unsigned int *)t266) = (t268 | t262);
    xsi_driver_vfirst_trans(t256, 0, 6);
    t269 = (t0 + 4496);
    *((int *)t269) = 1;

LAB1:    return;
LAB5:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB4;

LAB6:    t37 = *((unsigned int *)t25);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t25) = (t37 | t38);
    t39 = (t4 + 4);
    t40 = (t8 + 4);
    t41 = *((unsigned int *)t4);
    t42 = (~(t41));
    t43 = *((unsigned int *)t39);
    t44 = (~(t43));
    t45 = *((unsigned int *)t8);
    t46 = (~(t45));
    t47 = *((unsigned int *)t40);
    t48 = (~(t47));
    t49 = (t42 & t44);
    t50 = (t46 & t48);
    t51 = (~(t49));
    t52 = (~(t50));
    t53 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t53 & t51);
    t54 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t54 & t52);
    t55 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t55 & t51);
    t56 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t56 & t52);
    goto LAB8;

LAB10:    t68 = *((unsigned int *)t57);
    t69 = *((unsigned int *)t65);
    *((unsigned int *)t57) = (t68 | t69);
    t70 = *((unsigned int *)t64);
    t71 = *((unsigned int *)t65);
    *((unsigned int *)t64) = (t70 | t71);
    goto LAB9;

LAB11:    t86 = *((unsigned int *)t74);
    t87 = *((unsigned int *)t80);
    *((unsigned int *)t74) = (t86 | t87);
    t88 = (t25 + 4);
    t89 = (t57 + 4);
    t90 = *((unsigned int *)t25);
    t91 = (~(t90));
    t92 = *((unsigned int *)t88);
    t93 = (~(t92));
    t94 = *((unsigned int *)t57);
    t95 = (~(t94));
    t96 = *((unsigned int *)t89);
    t97 = (~(t96));
    t98 = (t91 & t93);
    t99 = (t95 & t97);
    t100 = (~(t98));
    t101 = (~(t99));
    t102 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t102 & t100);
    t103 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t103 & t101);
    t104 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t104 & t100);
    t105 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t105 & t101);
    goto LAB13;

LAB15:    t117 = *((unsigned int *)t106);
    t118 = *((unsigned int *)t114);
    *((unsigned int *)t106) = (t117 | t118);
    t119 = *((unsigned int *)t113);
    t120 = *((unsigned int *)t114);
    *((unsigned int *)t113) = (t119 | t120);
    goto LAB14;

LAB16:    t141 = *((unsigned int *)t129);
    t142 = *((unsigned int *)t135);
    *((unsigned int *)t129) = (t141 | t142);
    t143 = (t106 + 4);
    t144 = (t125 + 4);
    t145 = *((unsigned int *)t106);
    t146 = (~(t145));
    t147 = *((unsigned int *)t143);
    t148 = (~(t147));
    t149 = *((unsigned int *)t125);
    t150 = (~(t149));
    t151 = *((unsigned int *)t144);
    t152 = (~(t151));
    t153 = (t146 & t148);
    t154 = (t150 & t152);
    t155 = (~(t153));
    t156 = (~(t154));
    t157 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t157 & t155);
    t158 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t158 & t156);
    t159 = *((unsigned int *)t129);
    *((unsigned int *)t129) = (t159 & t155);
    t160 = *((unsigned int *)t129);
    *((unsigned int *)t129) = (t160 & t156);
    goto LAB18;

LAB19:    t179 = *((unsigned int *)t167);
    t180 = *((unsigned int *)t173);
    *((unsigned int *)t167) = (t179 | t180);
    t181 = (t129 + 4);
    t182 = (t163 + 4);
    t183 = *((unsigned int *)t129);
    t184 = (~(t183));
    t185 = *((unsigned int *)t181);
    t186 = (~(t185));
    t187 = *((unsigned int *)t163);
    t188 = (~(t187));
    t189 = *((unsigned int *)t182);
    t190 = (~(t189));
    t191 = (t184 & t186);
    t192 = (t188 & t190);
    t193 = (~(t191));
    t194 = (~(t192));
    t195 = *((unsigned int *)t173);
    *((unsigned int *)t173) = (t195 & t193);
    t196 = *((unsigned int *)t173);
    *((unsigned int *)t173) = (t196 & t194);
    t197 = *((unsigned int *)t167);
    *((unsigned int *)t167) = (t197 & t193);
    t198 = *((unsigned int *)t167);
    *((unsigned int *)t167) = (t198 & t194);
    goto LAB21;

LAB23:    t211 = *((unsigned int *)t200);
    t212 = *((unsigned int *)t208);
    *((unsigned int *)t200) = (t211 | t212);
    t213 = *((unsigned int *)t207);
    t214 = *((unsigned int *)t208);
    *((unsigned int *)t207) = (t213 | t214);
    goto LAB22;

LAB24:    t235 = *((unsigned int *)t223);
    t236 = *((unsigned int *)t229);
    *((unsigned int *)t223) = (t235 | t236);
    t237 = (t200 + 4);
    t238 = (t219 + 4);
    t239 = *((unsigned int *)t200);
    t240 = (~(t239));
    t241 = *((unsigned int *)t237);
    t242 = (~(t241));
    t243 = *((unsigned int *)t219);
    t244 = (~(t243));
    t245 = *((unsigned int *)t238);
    t246 = (~(t245));
    t247 = (t240 & t242);
    t248 = (t244 & t246);
    t249 = (~(t247));
    t250 = (~(t248));
    t251 = *((unsigned int *)t229);
    *((unsigned int *)t229) = (t251 & t249);
    t252 = *((unsigned int *)t229);
    *((unsigned int *)t229) = (t252 & t250);
    t253 = *((unsigned int *)t223);
    *((unsigned int *)t223) = (t253 & t249);
    t254 = *((unsigned int *)t223);
    *((unsigned int *)t223) = (t254 & t250);
    goto LAB26;

}


extern void work_m_00000000002986123013_0521546839_init()
{
	static char *pe[] = {(void *)Cont_35_0,(void *)Cont_36_1,(void *)Cont_39_2};
	xsi_register_didat("work_m_00000000002986123013_0521546839", "isim/Text_1_isim_beh.exe.sim/work/m_00000000002986123013_0521546839.didat");
	xsi_register_executes(pe);
}
