extends Label

var max_font_size = 28

func _enter_tree():
	# This ensures that every instance has its own font
	var preset_font = get("custom_fonts/font")
	if preset_font == null:
		return
	
	var unique_font = DynamicFont.new()
	unique_font.font_data = preset_font.font_data
	unique_font.size = max_font_size
	set("custom_fonts/font", unique_font)
	
	best_fit_check()

func best_fit_check():
	var font = get("custom_fonts/font")
	if font == null:
		return
	font.set("size", max_font_size)
	var font_size = max_font_size
	while get_line_count() > 1:
		font.set("size", font_size - 1)
		font_size = font.get("size")

func set_text(x):
	text = x
	best_fit_check()
