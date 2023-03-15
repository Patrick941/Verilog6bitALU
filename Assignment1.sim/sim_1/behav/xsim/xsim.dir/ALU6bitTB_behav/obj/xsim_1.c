/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_81(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_119(char*, char *);
extern void execute_101(char*, char *);
extern void execute_104(char*, char *);
extern void execute_109(char*, char *);
extern void execute_114(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_102(char*, char *);
extern void execute_103(char*, char *);
extern void execute_218(char*, char *);
extern void execute_217(char*, char *);
extern void execute_173(char*, char *);
extern void execute_158(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_214(char*, char *);
extern void execute_215(char*, char *);
extern void execute_216(char*, char *);
extern void execute_207(char*, char *);
extern void execute_208(char*, char *);
extern void execute_209(char*, char *);
extern void execute_174(char*, char *);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_219(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[55] = {(funcp)execute_81, (funcp)execute_293, (funcp)execute_294, (funcp)execute_295, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_119, (funcp)execute_101, (funcp)execute_104, (funcp)execute_109, (funcp)execute_114, (funcp)execute_117, (funcp)execute_118, (funcp)execute_102, (funcp)execute_103, (funcp)execute_218, (funcp)execute_217, (funcp)execute_173, (funcp)execute_158, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_214, (funcp)execute_215, (funcp)execute_216, (funcp)execute_207, (funcp)execute_208, (funcp)execute_209, (funcp)execute_174, (funcp)execute_180, (funcp)execute_181, (funcp)execute_219, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_296, (funcp)execute_297, (funcp)execute_298, (funcp)execute_299, (funcp)execute_300, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_12, (funcp)transaction_13};
const int NumRelocateId= 55;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/ALU6bitTB_behav/xsim.reloc",  (void **)funcTab, 55);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/ALU6bitTB_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/ALU6bitTB_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/ALU6bitTB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/ALU6bitTB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/ALU6bitTB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
