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
static const char *ng0 = "D:/Verilog/Lab2/test_ex1.v";
static int ng1[] = {0, 0};
static int ng2[] = {3, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};
static int ng9[] = {8, 0};
static int ng10[] = {9, 0};
static unsigned int ng11[] = {0U, 0U};
static unsigned int ng12[] = {1U, 0U};
static unsigned int ng13[] = {2U, 0U};
static unsigned int ng14[] = {3U, 0U};
static unsigned int ng15[] = {4U, 0U};
static unsigned int ng16[] = {5U, 0U};
static unsigned int ng17[] = {6U, 0U};
static unsigned int ng18[] = {7U, 0U};
static unsigned int ng19[] = {8U, 0U};
static unsigned int ng20[] = {9U, 0U};



static void Initial_41_0(char *t0)
{
    char t4[8];
    char t5[8];
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    char *t15;
    unsigned int t16;
    int t17;
    int t18;
    char *t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    int t28;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);

LAB4:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB6:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB9:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB10;

LAB11:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB12:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB13;

LAB14:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB15:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB16;

LAB17:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB18:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB19;

LAB20:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB21:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB22;

LAB23:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB24:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB25;

LAB26:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB27:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB28;

LAB29:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB30;

LAB31:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB30:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB31;

LAB32:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB33;

LAB34:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB33:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB34;

LAB35:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB36;

LAB37:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB36:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB37;

LAB38:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB39;

LAB40:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB39:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB40;

LAB41:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB42;

LAB43:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB42:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB43;

LAB44:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB45;

LAB46:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB45:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB46;

LAB47:    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB48;

LAB49:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB48:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB49;

LAB50:    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB51;

LAB52:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB51:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB52;

LAB53:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB54;

LAB55:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB54:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB55;

LAB56:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB57;

LAB58:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB57:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB58;

LAB59:    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB60;

LAB61:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB60:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB61;

LAB62:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 1608);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng8)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t4, t5, t6, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t5 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t6 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB63;

LAB64:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB65;
    goto LAB1;

LAB63:    t23 = *((unsigned int *)t6);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t5), t28);
    goto LAB64;

LAB65:    goto LAB1;

}


extern void work_m_00000000004210730077_3370072838_init()
{
	static char *pe[] = {(void *)Initial_41_0};
	xsi_register_didat("work_m_00000000004210730077_3370072838", "isim/test_ex1_isim_beh.exe.sim/work/m_00000000004210730077_3370072838.didat");
	xsi_register_executes(pe);
}
