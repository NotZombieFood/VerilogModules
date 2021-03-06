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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    xilinxcorelib_ver_m_00000000001067635404_4195285499_init();
    work_m_00000000003452451064_3019204014_init();
    work_m_00000000001411121052_2138213552_init();
    work_m_00000000004266370828_2058220583_init();
    work_m_00000000001841598669_0678699862_init();
    work_m_00000000001836139180_1014634146_init();
    work_m_00000000003683446579_2415336395_init();
    work_m_00000000000504510763_2077912178_init();
    work_m_00000000004008290881_2262464652_init();
    work_m_00000000003321695331_0886308060_init();
    work_m_00000000001371234531_3087963481_init();
    work_m_00000000003466215376_2339502750_init();
    xilinxcorelib_ver_m_00000000001067635404_3310125849_init();
    work_m_00000000004259014342_1395266205_init();
    work_m_00000000003455213529_2461264495_init();
    work_m_00000000001671348842_3515808994_init();
    work_m_00000000000332231317_3987437795_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000332231317_3987437795");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
