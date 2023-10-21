extends Sprite2D

const art_path = "res://Character_Art/"
var files = []
var textures = []

# Find filenames in art_path, ignore .import files.
func _find_image_files():
	var dir = DirAccess.open(art_path)
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if not dir.current_is_dir():
				if ".import" not in file_name:
					files.append(file_name)
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")
	
# Create ImageTexture objects from image files.
func _import_textures():
	for file in files:
		var image = Image.load_from_file(art_path + file)
		textures.append(ImageTexture.create_from_image(image))
	return textures

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
