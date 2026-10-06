extends RefCounted

const BAR := 48.0
var panel_top := 48.0

func bar_clear(top: float) -> bool:
	return top >= BAR

func may_panel() -> bool:
	return bar_clear(panel_top)
