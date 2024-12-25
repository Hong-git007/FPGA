set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {tb_fsm_test} -wdb {simulate_xsim_tb_fsm_test.wdb} -autoloadwcfg
