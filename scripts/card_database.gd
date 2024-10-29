extends Node

var cards = [
	{
		"title": "The Fool",
		"story": "The Ouroboros. The serpent who eats his tail. Over, and over, and over, and over, and over--\n	The world ends. There is nothing. And yet, there is everything? Negative space. What happens when the Serpent eats itself whole? What happens when the Serpent gets his way. WHAT IS ZERO?",
		"image": "res://assets/CardStuffs/Fool.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Everything", "result": "Kings of what? Nothing. We are ever hungry while THEY bleed freely. Our fountain of youth is being diluted by grease and sugar and salt. Our lives are FOOLISH lives."},
			{"text": "Nothing", "result": "The unlucky thirteen, the SERPENT. Ouroboros, ever eating, never dead, always dying. Praise be he who made them FOOLS, and made us kings."},
		]
	},
	{
		"title": "The Magician",
		"story": "IS ONE INFINITY?",
		"image": "res://assets/CardStuffs/Magician.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Yes", "result": "After all, the distance between the FOOL and the MAGICIAN is infinitesimal. Infinitely small, but still infinite."},
			{"text": "No", "result": "You realize this would have huge consequences on our world, right? Come on Emi, back me up on this. One is one, don't bring philosophy into math of all things."}
		]
	},
	{
		"title": "The High Priestess",
		"story": "You are reborn. \n	All you have is NOISE. Centuries and centuries of noise. Millenia, even. All the way back to when you were walking. \n	You fall in reverse, walking and then you're on your stomach. It's only when you slither do you realize that the noise is quiet one again. You spend time like that, curled up until your skin-- Is that what it is? you skin? Itches. \n	It itches, it itches, it itchesitchesitches. \n	NOISE. \n	But now there's something to block it. \n	Cool marble and amethyst soothe your mind. \n	Hello, he says, my name is Seth. \n	HE HOLDS HIS HAND OUT.",
		"image": "res://assets/CardStuffs/High_Priestess_.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Take his hand", "result": "Your skin settles. You tremble on two legs as he leads you to your throne."},
			{"text": "Turn away", "result": "For a brief moment, hurt flashes on his face. Then he turns both monsterous and beautiful, and snarls FINE, SLITHER THEN. You tremble, then slither after him as he opens stony wings and flies away."}
		]
	},
	{
		"title": "The Emperess",
		"story": "You sit on the 72nd floor of Aerie Tower. Your knees are dangling over one of the unguarded platforms jutting out of the building. \n	Around your neck is Azriel. You hold an apple juice box to his mouth, and his little blue eyes close happily as he sips from the straw. \n	You read a book. It has your friends’ warnings in there. \n	You hear the beat of wings, feel your hair blow up in gusts of wind. \n	Seth lands. \n	You startle, slipping off the edge of the platform. \n	Seth grabs you, and scolds you for being so reckless. Azriel becomes human once more, hand pressed to his chest in adrenaline shot fear. \n	You apologize; the wind nearly knocked the book from your hands and you didn’t want to lose it. It has your brain in it. \n	Seth sets down McDonalds. \n	The three of you feast. \n	WHAT DO YOU PONDER?",
		"image": "res://assets/CardStuffs/Empress.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Humanity", "result": "You are human? Maybe? You should consult your brain again."},
			{"text": "Mortality", "result": "You briefly consider leaning back and falling off the edge. Maybe Seth would catch you, maybe he wouldn't. But you long to be aware of your humanity."}
		]
	},
	{
		"title": "The Emperor",
		"story": "You think you're severely underpaid. \n	That is to say, you're not being paid in money, just honor. But while there's some honor in guarding the Ouroboros, there's not much in guarding a suicidal girl who doesn't know she's suicidal until the last moment. \n	She's sleeping now, ribcage cracked open so you can monitor the process of her organs repairing themselves. DO YOU WAKE HER UP?",
		"image": "res://assets/CardStuffs/Emperor_.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Yes", "result": "You get lectured by Azriel and the Council."},
			{"text": "No", "result": "Emi comes to the realization you are more aquainted with her organs that she is and asks you to take pictures for her weird brain book. Great."}
		]
	},
	{
		"title": "The Hierophant",
		"story": "WILL YOU BREAK THE CYCLE?",
		"image": "res://assets/CardStuffs/Hierophant.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Yes", "result": "You are already a loop in the cycle of life and death. You grow dizzy and tired and overstimulated from it. You just want a BREAK. Plus, there's Emi..."},
			{"text": "No", "result": "You know what happens to those who try and break the cycle. To be nothing more than a slithering thing. Perhaps... perhaps your loved ones will save you, when the time comes. Perhaps they will cut off your tail in the kindest cruelty."}
		]
	},
	{
		"title": "The Lovers",
		"story": "WHO ARE YOU?",
		"image": "res://assets/CardStuffs/Lovers.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Seth", "result": "You're moving before you realize it as Emi sways and falls off the sky-high platform. You dive, shifting into the form you're strongest in, stone and gemstones and wings, but Emi shies away, even as she falls. You get close enough to touch-- \n	blood and miasma splatter across you face when Emi hits the ground."},
			{"text": "Azriel", "result": "She is human, yet she's a citizen of Cognito. And yet, she isn't. The city rejects her even as it forces her to stay. She says she's human, but she's not. She's *not*. \n	You wish you didn't find out the truth when you rush out of the elevator to see black blood on the pavement."}
		]
	},
	{
		"title": "The Chariot",
		"story": "You stare at the book that was handed to you. It's for you to record things, the things you forget as time passes. You open to the first page. and pick up a pen. WHAT IS THE FIRST THING YOU SCRAWL?",
		"image": "res://assets/CardStuffs/Chariot.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Your Name", "result": "Emiko Satsujin-Yavuz"},
			{"text": "A Doodle", "result": "x_x"}
		]
	},
	{
		"title": "Strength",
		"story": "THE GARGOYLES ALWAYS WATCH.",
		"image": "res://assets/CardStuffs/Strength.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Watch Emi", "result": "Where the hell is Azriel?!"},
			{"text": "Watch Azriel", "result": "Uh, Seth, maybe you should've watched Emi. I can see someone falling off the tower--"}
		]
	},
	{
		"title": "The Hermit",
		"story": "The city of Cognito is a strange place. \n	Anyone outside the city forgot it even existed, and yet everyone knew of its existence. When you asked someone on the street about Cognito, they'd always light up with recognition. \n	Oh yes, Cognito. 'Fraid I don't know to much about it. \n	Cognito's name must have been some kind of ironic prophecy. This is the no-one and nowhere city. YOU DECIDE TO...",
		"image": "res://assets/CardStuffs/Hermit.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Step Towards the City Gates", "result": "Something tries to push you back, but you have nowhere else to go. So you push back."},
			{"text": "Step Back from the City Gates", "result": "You have nowhere else to go. Perhaps... perhaps you will just die here."}
		]
	},
	{
		"title": "Wheel of Fortune",
		"story": "What's this supposed to be, Azriel? \n	Tarot cards... let's see. Oh, I got the Wheel of Fortune. IT IS...",
		"image": "res://assets/CardStuffs/Wheel_Of_Fortune.png",
		"image_back": "res://assets/CardStuffs/CardBack.png",
		"choices": [
			{"text": "Upright", "result": "If I'm going through a difficult time, it will get better from here. Ha, I already know that! You and Seth are here with me, aren't you?"},
			{"text": "Upside-down", "result": "My luck is going to take a turn for the worse? How can it get worse?"}
		]
	}


]
