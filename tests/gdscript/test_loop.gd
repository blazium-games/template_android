extends AutoworkTest

const Rules = preload("res://scripts/rules.gd")

func test_bar_clear() -> void:
	var rules = Rules.new()
	assert_false(rules.bar_clear(47.0), "under the status bar")
	assert_true(rules.bar_clear(48.0), "clear of the status bar")
	rules.panel_top = 0.0
	assert_false(rules.may_panel(), "panel waits")
	rules.panel_top = 48.0
	assert_true(rules.may_panel(), "panel opens")
	assert_true(load("res://scenes/panel.tscn") != null, "panel loads")
