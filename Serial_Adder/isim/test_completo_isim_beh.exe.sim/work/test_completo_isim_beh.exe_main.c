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
    work_m_00000000000670980984_2701757487_init();
    work_m_00000000002306501420_3663511229_init();
    work_m_00000000004004521955_4020927633_init();
    work_m_00000000001764263274_2582214024_init();
    work_m_00000000001611455679_0300872298_init();
    work_m_00000000000859327713_3979377396_init();
    work_m_00000000000474952069_2139690135_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000474952069_2139690135");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
