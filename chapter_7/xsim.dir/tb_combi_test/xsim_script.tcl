set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {tb_combi_test} -wdb {simulate_xsim_tb_combi_test.wdb} -autoloadwcfg
