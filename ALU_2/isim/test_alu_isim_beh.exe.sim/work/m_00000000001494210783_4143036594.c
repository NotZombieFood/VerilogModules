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
static const char *ng0 = "D:/Verilog/ALU_2/Multiplicador_6bits.v";
static int ng1[] = {5, 0};
static int ng2[] = {0, 0};
static int ng3[] = {7, 0};
static int ng4[] = {6, 0};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {3U, 0U};



static void Always_34_0(char *t0)
{
    char t6[8];
    char t11[8];
    char t35[8];
    char t36[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    int t45;
    char *t46;
    unsigned int t47;
    int t48;
    int t49;
    char *t50;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 4464);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1008U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB9;

LAB6:    if (t23 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t11) = 1;

LAB9:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng5)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB19;

LAB16:    if (t23 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t11) = 1;

LAB19:    t13 = (t11 + 4);
    t28 = *((unsigned int *)t13);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB20;

LAB21:
LAB22:
LAB12:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    t4 = (t0 + 2568);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng1)));
    t9 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t6, t11, t35, ((int*)(t7)), 2, t8, 32, 1, t9, 32, 1);
    t10 = (t6 + 4);
    t14 = *((unsigned int *)t10);
    t45 = (!(t14));
    t12 = (t11 + 4);
    t15 = *((unsigned int *)t12);
    t48 = (!(t15));
    t49 = (t45 && t48);
    t13 = (t35 + 4);
    t16 = *((unsigned int *)t13);
    t52 = (!(t16));
    t53 = (t49 && t52);
    if (t53 == 1)
        goto LAB26;

LAB27:    goto LAB2;

LAB8:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(35, ng0);

LAB13:    xsi_set_current_line(36, ng0);
    t33 = ((char*)((ng2)));
    t34 = (t0 + 2568);
    t38 = (t0 + 2568);
    t39 = (t38 + 72U);
    t40 = *((char **)t39);
    t41 = ((char*)((ng3)));
    t42 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t35, t36, t37, ((int*)(t40)), 2, t41, 32, 1, t42, 32, 1);
    t43 = (t35 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (!(t44));
    t46 = (t36 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (!(t47));
    t49 = (t45 && t48);
    t50 = (t37 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    if (t53 == 1)
        goto LAB14;

LAB15:    goto LAB12;

LAB14:    t54 = *((unsigned int *)t37);
    t55 = (t54 + 0);
    t56 = *((unsigned int *)t35);
    t57 = *((unsigned int *)t36);
    t58 = (t56 - t57);
    t59 = (t58 + 1);
    xsi_vlogvar_assign_value(t34, t33, t55, *((unsigned int *)t36), t59);
    goto LAB15;

LAB18:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(38, ng0);

LAB23:    xsi_set_current_line(39, ng0);
    t26 = ((char*)((ng6)));
    t27 = (t0 + 2568);
    t33 = (t0 + 2568);
    t34 = (t33 + 72U);
    t38 = *((char **)t34);
    t39 = ((char*)((ng3)));
    t40 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t35, t36, t37, ((int*)(t38)), 2, t39, 32, 1, t40, 32, 1);
    t41 = (t35 + 4);
    t44 = *((unsigned int *)t41);
    t45 = (!(t44));
    t42 = (t36 + 4);
    t47 = *((unsigned int *)t42);
    t48 = (!(t47));
    t49 = (t45 && t48);
    t43 = (t37 + 4);
    t51 = *((unsigned int *)t43);
    t52 = (!(t51));
    t53 = (t49 && t52);
    if (t53 == 1)
        goto LAB24;

LAB25:    goto LAB22;

LAB24:    t54 = *((unsigned int *)t37);
    t55 = (t54 + 0);
    t56 = *((unsigned int *)t35);
    t57 = *((unsigned int *)t36);
    t58 = (t56 - t57);
    t59 = (t58 + 1);
    xsi_vlogvar_assign_value(t27, t26, t55, *((unsigned int *)t36), t59);
    goto LAB25;

LAB26:    t17 = *((unsigned int *)t35);
    t55 = (t17 + 0);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t11);
    t58 = (t18 - t19);
    t59 = (t58 + 1);
    xsi_vlogvar_assign_value(t2, t3, t55, *((unsigned int *)t11), t59);
    goto LAB27;

}

static void Always_44_1(char *t0)
{
    char t6[8];
    char t11[8];
    char t35[8];
    char t36[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    int t45;
    char *t46;
    unsigned int t47;
    int t48;
    int t49;
    char *t50;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    int t59;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4480);
    *((int *)t2) = 1;
    t3 = (t0 + 3928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1168U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB9;

LAB6:    if (t23 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t11) = 1;

LAB9:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1168U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng5)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB19;

LAB16:    if (t23 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t11) = 1;

LAB19:    t13 = (t11 + 4);
    t28 = *((unsigned int *)t13);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB20;

LAB21:
LAB22:
LAB12:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    t4 = (t0 + 2728);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng1)));
    t9 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t6, t11, t35, ((int*)(t7)), 2, t8, 32, 1, t9, 32, 1);
    t10 = (t6 + 4);
    t14 = *((unsigned int *)t10);
    t45 = (!(t14));
    t12 = (t11 + 4);
    t15 = *((unsigned int *)t12);
    t48 = (!(t15));
    t49 = (t45 && t48);
    t13 = (t35 + 4);
    t16 = *((unsigned int *)t13);
    t52 = (!(t16));
    t53 = (t49 && t52);
    if (t53 == 1)
        goto LAB26;

LAB27:    goto LAB2;

LAB8:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(45, ng0);

LAB13:    xsi_set_current_line(46, ng0);
    t33 = ((char*)((ng2)));
    t34 = (t0 + 2728);
    t38 = (t0 + 2728);
    t39 = (t38 + 72U);
    t40 = *((char **)t39);
    t41 = ((char*)((ng3)));
    t42 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t35, t36, t37, ((int*)(t40)), 2, t41, 32, 1, t42, 32, 1);
    t43 = (t35 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (!(t44));
    t46 = (t36 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (!(t47));
    t49 = (t45 && t48);
    t50 = (t37 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t49 && t52);
    if (t53 == 1)
        goto LAB14;

LAB15:    goto LAB12;

LAB14:    t54 = *((unsigned int *)t37);
    t55 = (t54 + 0);
    t56 = *((unsigned int *)t35);
    t57 = *((unsigned int *)t36);
    t58 = (t56 - t57);
    t59 = (t58 + 1);
    xsi_vlogvar_assign_value(t34, t33, t55, *((unsigned int *)t36), t59);
    goto LAB15;

LAB18:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(48, ng0);

LAB23:    xsi_set_current_line(49, ng0);
    t26 = ((char*)((ng6)));
    t27 = (t0 + 2728);
    t33 = (t0 + 2728);
    t34 = (t33 + 72U);
    t38 = *((char **)t34);
    t39 = ((char*)((ng3)));
    t40 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t35, t36, t37, ((int*)(t38)), 2, t39, 32, 1, t40, 32, 1);
    t41 = (t35 + 4);
    t44 = *((unsigned int *)t41);
    t45 = (!(t44));
    t42 = (t36 + 4);
    t47 = *((unsigned int *)t42);
    t48 = (!(t47));
    t49 = (t45 && t48);
    t43 = (t37 + 4);
    t51 = *((unsigned int *)t43);
    t52 = (!(t51));
    t53 = (t49 && t52);
    if (t53 == 1)
        goto LAB24;

LAB25:    goto LAB22;

LAB24:    t54 = *((unsigned int *)t37);
    t55 = (t54 + 0);
    t56 = *((unsigned int *)t35);
    t57 = *((unsigned int *)t36);
    t58 = (t56 - t57);
    t59 = (t58 + 1);
    xsi_vlogvar_assign_value(t27, t26, t55, *((unsigned int *)t36), t59);
    goto LAB25;

LAB26:    t17 = *((unsigned int *)t35);
    t55 = (t17 + 0);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t11);
    t58 = (t18 - t19);
    t59 = (t58 + 1);
    xsi_vlogvar_assign_value(t2, t3, t55, *((unsigned int *)t11), t59);
    goto LAB27;

}

static void Cont_54_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
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

LAB0:    t1 = (t0 + 4144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 4095U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 4095U);
    t12 = (t0 + 4576);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 4095U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 11);
    t25 = (t0 + 4496);
    *((int *)t25) = 1;

LAB1:    return;
}


extern void work_m_00000000001494210783_4143036594_init()
{
	static char *pe[] = {(void *)Always_34_0,(void *)Always_44_1,(void *)Cont_54_2};
	xsi_register_didat("work_m_00000000001494210783_4143036594", "isim/test_alu_isim_beh.exe.sim/work/m_00000000001494210783_4143036594.didat");
	xsi_register_executes(pe);
}
