extends Control

var card_database: Node  # Declare as Node since CardDatabase extends Node
var current_card = null

func _ready():
	# Instantiate the CardDatabase and access its cards
	card_database = preload("res://scripts/card_database.gd").new()
	card_database.add_to_group("card_database")  # Optional: add to group if needed


func draw_card():
	if card_database.cards.size() == 0:
		display_final_question()
		$DrawCardButton.visible = false
		$CardImage.visible = false
		return

	# Generate a random index to draw a card
	var card_index = randi() % card_database.cards.size()

	# Get the drawn card
	var card = card_database.cards[card_index]

	# Remove the drawn card from the deck
	card_database.cards.remove_at(card_index)  # Use remove_at to remove by index
	
	$CardAnimationPlayer.play("CardDraw") #ANIMATION GOOD, DO NOT CHANGE

	# Display the drawn card
	display_card(card)


func display_card(card):
	# Set the title and story
	$CardTitle.text = card["title"]
	$CardStory.text = card["story"]

	# Load and display the card image
	var card_image_path = card["image"]
	var texture = load(card_image_path)
	if texture:
		$CardTexture.texture = texture
	else:
		print("Error: Failed to load card image at path: " + card_image_path)

	# Clear old choices from the ChoicesContainer
	for child in $ChoicesContainer.get_children():
		child.queue_free()

	# Add new choices to the ChoicesContainer
	for choice in card["choices"]:
		var button = Button.new()
		button.text = choice["text"]  # Set the button text

		# Connect the button's pressed signal
		button.connect("pressed", Callable(self, "_on_ChoiceButton_pressed").bind(choice["result"]))

		$ChoicesContainer.add_child(button)


func _on_draw_card_button_pressed() -> void:
	# Reset UI elements before drawing a new card
	$CardTitle.text = ""  # Clear the card title
	$CardStory.text = ""  # Clear the card story
	
	# Remove all children from the ChoicesContainer
	for child in $ChoicesContainer.get_children():
		child.queue_free()
	draw_card()  # Call the existing draw_card function to get a new card


func _on_ChoiceButton_pressed(result_text):
	# Display the result of the choice in the story window
	$CardStory.text = ""
	$CardStory.text += result_text  # Append the result to the story text
	
	# Hide or remove all choice buttons, but keep the story visible
	for child in $ChoicesContainer.get_children():
		child.queue_free()  # Remove buttons from the scene


func display_final_question():
	var final_question = "WHAT IS EMI?"
	var final_choices = [
		{"text": "Zombie", "result": "Emi, really, sticking pencils in your eyes just because you saw us in a compromising position isn't the ratioinal choice here. THE END"},
		{"text": "Vampire", "result": "Seth stares at the carnage. How could they have been wrong? It was the only thing that made sense. So when they fed her blood, just to try a keep her alive, because she was starving, that had to be the reason for her memory loss... \n	the whole city was stained with red and black. THE END"},
		{"text": "Human", "result": "Seth? I'm tired. This time, when I fall... could you just make sure that I don't come back? Please? THE END"},
		{"text": "I don't know", "result": "As you are an unknown being, the council of Cognito declares you to be a threat. Normally, we would execute you to give you a painless death. Unfortunately, you do not die. So we sentence you to exile under the sea in one of our iron maiden coffins. THE END"}
	]

	# Set the final question in the story label
	$CardStory.text = final_question

	# Draw the final choices
	draw_final_choices(final_choices)  # A new method to draw the final choices


func draw_final_choices(final_choices):
	# Get the container (assuming you've named it "ChoiceContainer")
	var container = $FinalChoiceContainer

	# Clear previous buttons by queueing them for deletion
	for child in container.get_children():
		child.queue_free()  # Removes the button safely

	# Create new buttons for the final choices
	for choice in final_choices:
		var button = Button.new()  # Create a new button
		button.text = choice["text"]  # Set the button text

		# Connect the button to the pressed signal
		button.connect("pressed", Callable(self, "_on_FinalChoiceButton_pressed").bind(choice))

		# Add the button to the container
		container.add_child(button)


func _on_FinalChoiceButton_pressed(choice):
	# Display the result of the final choice
	$CardStory.text = choice["result"]

	# Hide or remove all final choice buttons
	for child in $FinalChoiceContainer.get_children():
		child.queue_free()
