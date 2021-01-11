extends Control

const GODOCON_CFG_PATH = "user://settings.cfg"

onready var file_dialog = $FileDialog
onready var item_list = $VBoxContainer/MarginContainer/VBoxContainer/ItemList

var config_file: ConfigFile
var game_list = []

func add_games(paths: Array):
	for path in paths:
		game_list.append(path)
		item_list.add_item(path)

	config_file.set_value("godocon", "game_list", game_list)
	config_file.save(GODOCON_CFG_PATH)

func _ready():
	config_file = ConfigFile.new()
	var err = config_file.load(GODOCON_CFG_PATH)
	if err == OK:
		add_games(config_file.get_value("godocon", "game_list", []))

func _on_Add_pressed():
	file_dialog.popup_centered()

func _on_FileDialog_file_selected(path: String):
	add_games([path])


func _on_ItemList_item_activated(index):
	OS.execute(
		OS.get_executable_path(),
		["--main-pack", game_list[index]],
		false
	)
