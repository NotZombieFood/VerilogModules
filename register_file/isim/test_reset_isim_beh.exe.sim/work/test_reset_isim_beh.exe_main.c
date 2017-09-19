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
    work_m_00000000000283064699_1744761271_init();
    work_m_00000000001745620257_0340138146_init();
    work_m_00000000004279937649_3866583278_init();
    work_m_00000000001533862025_1583335200_init();
    work_m_00000000004188041645_2951471609_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004188041645_2951471609");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
