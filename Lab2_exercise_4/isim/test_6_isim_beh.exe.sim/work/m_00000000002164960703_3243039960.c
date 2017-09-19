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
static const char *ng0 = "D:/Verilog/Lab2_exercise_4/Exercise6.v";
static int ng1[] = {60, 0};
static int ng2[] = {6, 0};
static int ng3[] = {50, 0};
static int ng4[] = {5, 0};
static int ng5[] = {40, 0};
static int ng6[] = {4, 0};
static int ng7[] = {30, 0};
static int ng8[] = {3, 0};
static int ng9[] = {20, 0};
static int ng10[] = {2, 0};
static int ng11[] = {10, 0};
static int ng12[] = {1, 0};
static int ng13[] = {0, 0};
static unsigned int ng14[] = {0U, 0U};
static unsigned int ng15[] = {63U, 0U};
static unsigned int ng16[] = {1U, 0U};
static unsigned int ng17[] = {6U, 0U};
static unsigned int ng18[] = {2U, 0U};
static unsigned int ng19[] = {91U, 0U};
static unsigned int ng20[] = {3U, 0U};
static unsigned int ng21[] = {79U, 0U};
static unsigned int ng22[] = {4U, 0U};
static unsigned int ng23[] = {102U, 0U};
static unsigned int ng24[] = {5U, 0U};
static unsigned int ng25[] = {109U, 0U};
static unsigned int ng26[] = {125U, 0U};
static unsigned int ng27[] = {7U, 0U};
static unsigned int ng28[] = {8U, 0U};
static unsigned int ng29[] = {127U, 0U};
static unsigned int ng30[] = {9U, 0U};
static unsigned int ng31[] = {103U, 0U};



static void Always_30_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3664);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB7;

LAB6:    t8 = (t4 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t5) > *((unsigned int *)t4))
        goto LAB8;

LAB9:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB16;

LAB15:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB17;

LAB18:    t8 = (t6 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB25;

LAB24:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB25;

LAB28:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB26;

LAB27:    t8 = (t6 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB34;

LAB33:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB34;

LAB37:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB35;

LAB36:    t8 = (t6 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB43;

LAB42:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB44;

LAB45:    t8 = (t6 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB52;

LAB51:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB52;

LAB55:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB53;

LAB54:    t8 = (t6 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(61, ng0);

LAB60:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);

LAB58:
LAB49:
LAB40:
LAB31:
LAB22:
LAB13:    goto LAB2;

LAB7:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB9;

LAB8:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(31, ng0);

LAB14:    xsi_set_current_line(32, ng0);
    t16 = ((char*)((ng2)));
    t17 = (t0 + 1928);
    xsi_vlogvar_assign_value(t17, t16, 0, 0, 4);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t3, 6, t2, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 4);
    goto LAB13;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB17:    *((unsigned int *)t6) = 1;
    goto LAB18;

LAB20:    xsi_set_current_line(36, ng0);

LAB23:    xsi_set_current_line(37, ng0);
    t9 = ((char*)((ng4)));
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t3, 6, t2, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 4);
    goto LAB22;

LAB25:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB27;

LAB26:    *((unsigned int *)t6) = 1;
    goto LAB27;

LAB29:    xsi_set_current_line(41, ng0);

LAB32:    xsi_set_current_line(42, ng0);
    t9 = ((char*)((ng6)));
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t3, 6, t2, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 4);
    goto LAB31;

LAB34:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB36;

LAB35:    *((unsigned int *)t6) = 1;
    goto LAB36;

LAB38:    xsi_set_current_line(46, ng0);

LAB41:    xsi_set_current_line(47, ng0);
    t9 = ((char*)((ng8)));
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t3, 6, t2, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 4);
    goto LAB40;

LAB43:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB45;

LAB44:    *((unsigned int *)t6) = 1;
    goto LAB45;

LAB47:    xsi_set_current_line(51, ng0);

LAB50:    xsi_set_current_line(52, ng0);
    t9 = ((char*)((ng10)));
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t3, 6, t2, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 4);
    goto LAB49;

LAB52:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB54;

LAB53:    *((unsigned int *)t6) = 1;
    goto LAB54;

LAB56:    xsi_set_current_line(56, ng0);

LAB59:    xsi_set_current_line(57, ng0);
    t9 = ((char*)((ng12)));
    t10 = (t0 + 1928);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t3, 6, t2, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 4);
    goto LAB58;

}

static void Always_69_1(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3680);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(69, ng0);

LAB5:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng20)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng22)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng24)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng27)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng28)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng30)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB2;

LAB7:    xsi_set_current_line(71, ng0);
    t10 = ((char*)((ng15)));
    memset(t9, 0, 8);
    t11 = (t9 + 4);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t10);
    t14 = (~(t13));
    *((unsigned int *)t9) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB29;

LAB28:    t19 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t19 & 127U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 127U);
    t21 = (t0 + 1448);
    xsi_vlogvar_assign_value(t21, t9, 0, 0, 7);
    goto LAB27;

LAB9:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB11:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB13:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB15:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB17:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng25)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB19:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB21:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng27)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB23:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng29)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB25:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng31)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB29:    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t9) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB28;

}

static void Always_84_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3696);
    *((int *)t2) = 1;
    t3 = (t0 + 3376);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);

LAB5:    xsi_set_current_line(85, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng20)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng22)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng24)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng27)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng28)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng30)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB2;

LAB7:    xsi_set_current_line(86, ng0);
    t9 = ((char*)((ng15)));
    t10 = (t0 + 1608);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 7);
    goto LAB27;

LAB9:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB11:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB13:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB15:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB17:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng25)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB19:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB21:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng27)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB23:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng29)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

LAB25:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng31)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 7);
    goto LAB27;

}


extern void work_m_00000000002164960703_3243039960_init()
{
	static char *pe[] = {(void *)Always_30_0,(void *)Always_69_1,(void *)Always_84_2};
	xsi_register_didat("work_m_00000000002164960703_3243039960", "isim/test_6_isim_beh.exe.sim/work/m_00000000002164960703_3243039960.didat");
	xsi_register_executes(pe);
}
