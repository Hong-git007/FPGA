set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {tb_clock_generator} -wdb {simulate_xsim_tb_clock_generator.wdb} -autoloadwcfg
