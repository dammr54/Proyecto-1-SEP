# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}

proc update_PARAM_VALUE.MAX_COUNT_LONG { PARAM_VALUE.MAX_COUNT_LONG } {
	# Procedure called to update MAX_COUNT_LONG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COUNT_LONG { PARAM_VALUE.MAX_COUNT_LONG } {
	# Procedure called to validate MAX_COUNT_LONG
	return true
}

proc update_PARAM_VALUE.MAX_COUNT_SHORT { PARAM_VALUE.MAX_COUNT_SHORT } {
	# Procedure called to update MAX_COUNT_SHORT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COUNT_SHORT { PARAM_VALUE.MAX_COUNT_SHORT } {
	# Procedure called to validate MAX_COUNT_SHORT
	return true
}


proc update_MODELPARAM_VALUE.MAX_COUNT_LONG { MODELPARAM_VALUE.MAX_COUNT_LONG PARAM_VALUE.MAX_COUNT_LONG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COUNT_LONG}] ${MODELPARAM_VALUE.MAX_COUNT_LONG}
}

proc update_MODELPARAM_VALUE.MAX_COUNT_SHORT { MODELPARAM_VALUE.MAX_COUNT_SHORT PARAM_VALUE.MAX_COUNT_SHORT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COUNT_SHORT}] ${MODELPARAM_VALUE.MAX_COUNT_SHORT}
}

