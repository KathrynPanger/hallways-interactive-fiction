"Hallways"

[When play begins, say: "You are Alice Davenport, magic investigator. You sit in the hut of Natasha Grey, witch of the east wood. By mysterious circumstances, her daughter, Abigale, has been stricken with a curse of homicidal madness. For weeks the witch's spawn has wrecked havok across the land, hexing and cursing all who cross her path. Natasha is convinced that the source of her dauther's madness can be found within her dreams, and so she seeks your services as a magic investigator to travel to the land of nightmares and discover what evil resides within her."]

The Ordinary Room is a room.
	"This is a very plain room about 14 foot square. The walls are white."

The pair of glasses is in the Ordinary Room.
	The glasses are a wearable thing.
	The description of the glasses is "It is a pair of half-moon spectacles with red frames. They glow faintly, as if by magic.".
	The short bookcase is in the Ordinary Room. The bookcase is a fixed in place supporter.
	The white book is a thing.
		The description of the white book is "It is a plain, white, hardcover book. The title is: [quotation mark]You Will Read This Book[quotation mark].".
	the white book is on the short bookcase.
	

	
instead of looking in the Ordinary Room for the first time, say "You are in a dream; not yours, but someone else's. There is a pair of glasses and a short bookcase here.".


[White book code starts here]
trance is a kind of value. 
The book_trance is a trance that varies. 
yes is a trance. 
no is a trance.
the book_trance is initially no.

Instead of reading the white book:
	now the player is carrying the white book;
	now the book_trance is yes;
	say "[book_phrase]";
	increase the sleep_number of the player by 1;

The player has a number called the sleep_number. The sleep_number of the player is 0.	


to say book_phrase:
	if the sleep_number of the player is 0:
		say "The first page says: [quotation mark]YOU ARE READING THIS BOOK.[quotation mark]";
	otherwise if the sleep_number of the player is less than 4:
		say "The next page says: [quotation mark]YOU ARE STILL READING THIS BOOK.[quotation mark]";
	otherwise if the sleep_number of the player is 4:
		say "The next page says: [quotation mark]YOU ARE STILL READING THIS BOOK.[quotation mark][line break][line break]All this reading is making you tired.";
	otherwise if the sleep_number of the player is 5:
		say "The next page says: [quotation mark]YOU CONTINUE TO READ THIS BOOK.[quotation mark][line break][line break]The more you read, the more tired you feel.";		
	otherwise if the sleep_number of the player is 6:
		say "The next page says: [quotation mark]YOU CONTINUE TO READ THIS BOOK.[quotation mark][line break][line break]You feel drained. It's getting harder to understand the words.";
	otherwise if the sleep_number of the player is 7:
		say "The next page says: [quotation mark]YOU CONTINUE TO READ THIS BOOK.[quotation mark][line break][line break]In fact, its getting harder to think of anything at all.";	
	otherwise if the sleep_number of the player is 8:
		say "The next page says: [quotation mark]YOU CONTINUE TO READ THIS BOOK.[quotation mark][line break][line break]You're exhausted. You feel as if you might pass out soon.";	
		
The eyes are a backdrop. The eyes are everywhere.
instead of closing the eyes:
	if the book_trance is yes:
		say "You try to close your eyes, but you only blink. You feel compelled to keep reading.[no line break]";
	otherwise:
		say "You close your eyes briefly. Unsurprisingly, it solves nothing.";
		
screaming is an action applying to nothing. Understand "scream" as screaming.
instead of screaming:
	say "Did that make you feel better?"
			
instead of doing something other than closing the eyes when the book_trance is yes: 
	if the sleep_number of the player is less than 9:
		say "[book_phrase]";
		increase the sleep_number of the player by 1;
	otherwise:
		if the hallway is unvisited:
			say "The last page says: [quotation mark]YOU HAVE FINISHED...[line break][line break]The book drops from your hand as you fall asleep mid-sentence, sinking into warm darkness. Time passes, and you awake lying face-down on the carpet in an unfamiliar hallway. There is something strange about this place, but you can't quite explain it. You also sense that something important has changed. You feel a vague but persistent tension growing in the back of your mind. You slowly stand, and after a brief dizzy spell, regain your footing.[line break][line break]";
		otherwise:
			say "The book drops from your hand as you fall asleep mid-sentence, sinking into warm darkness. Time passes, and you once again awake in the middle of the now-familiar hallway.";
		now the sleep_number of the player is 0;
		now the book_trance is no;
		now the player is in the Hallway;
				
[white book code ends here]



[Intro v1]
[when play begins, say "[italic type] There are places which are sacred to us. Sometimes these places are real, like a child's bedroom or a secret vaction spot. At other times they are fictional, like the world described in a favorite book, or an imaginary medow to medidate in. When we create fictional spaces, we design a universe tailored to our own desires. This allows us, for a brief time, to cloister away deep inside of ourselves where no one can reach us or do us harm. These places represent home, perhaps more profoundly than any physical home ever could. Just like a real home however, a fictional home can become unsafe. When this happens, our dreams are corrupted, our desires twisted, and we lose grip of our basic sense of reality. There are some who find excitement in this experience, and we should pity them, because for these people, safety itself is a fiction. [line break] [line break] This story is one such fiction, dreamed up by one such person. It is an unsafe, sacred home, and it is not yours. You have not been invited here, you are not welcome here, and you should leave. [bold type]This place isn't for you.[italic type] If you insist on staying anyway however, then perhaps you are such a person yourself, and you are in good company. [line break] [line break]"]

[ROOM TEMPLATE:


The room [ROOM]
	is [dir] of [parent].
		["description".]
	The [item] is a [property list].
	The [item] is here. 
		The initial appearance of the [item] is ["description"]
		The description of the [item] is ["description".]
	The [scenery] is scenery in the [ROOM].
		["description".]
	The room [ROOM] is a [status] room.
	[special commands; e.g. "west of the [ROOM] is nowhere".]
	
]
	
[REGION: Hallways]

Include Exit Lister by Gavin Lambert.
Include Secret Doors by Gavin Lambert.
Include Exit Lister by Eric Eve.


[spells]


	
[Long descriptions]

To say hallway_long:
	say "This is a long hallway that seems to stretch endlessly in either direction.  It is reminiscent of the halls of a fancy hotel; identical doors are spaced regularly along the walls on either side, each of which are outfitted with a black box above the handle designed to accept a key card. The walls are papered with a rich navy and powder-blue damask pattern, and a tightly knitted carpet frames the passage, tracing muted grey and gold stripes down its length. The air feels unnaturally still.";
	
to say hallway_short:
	say "You are in the main hallway. It stretches indefinitely in either direction. There are doors to your east and west."
	
		


[The Tension]


[Status is a kind of value. The statuses are no tension, a little tense, very tense, extremely tense, and overwhelmed. 
The tension_level is a status that varies.
the the tension_level is initially no tension.

The tension is a backdrop. The tension is everywhere. The tension has a number called the degree. The degree is initially 1.


Instead of doing something other than touching to the tension:
	say "That isn't something you can do to your feelings of tension."
Instead of touching the tension:
	if the degree of the tension is 0:
		say "You are completely relaxed; a rare and special experience.";
	else if the degree of the tension is 1:
		say "You are a little tense.";
	else if the degree of the tension is 2:
		say "You feel very tense.";
	else if the degree of the tension is 3:
		say "You feel extremely tense.";
	otherwise:
		say "You feel overwhelmed";
]

[Status is a kind of value. 
The tension is a status that varies. 
no tension is a status. 
a little tense is a status.
very tense is a status.
extremely tense is a status.
overwhelmed is a status.
The tension is initially no tension.]



The w-room 
	is a room with the printed name "[if the evil_presence is off]Walls[otherwise] [evil-printname]".
	"[if the evil_presence is on][evil-description][otherwise]You are standing on a slab of concrete that is four foot square. Around you on every side are grey brick walls that stretch upward indefinitely. Your fear resolves into a grim sense of familiarity, and a heavy burden lifts from your shoulders. You feel oddly at peace.".
	The walls are here. 
	The walls is fixed in place.
	The description of the walls is "The walls are unyielding.".
after going to the w-room:
	now the tension-number is 0;
	
  





The Hallway 
	is a room. 
	the description of the hallway is "[if unvisited][hallway_long][otherwise][hallway_short]"
	





The Narrow Corridor is west of the Hallway.
	"This narrow corridor branches off of the main hallway. There is a door to the west that looks slightly different from the others. The wood is richer and brighter, and it opens outward rather than inward. A brass plaque is posted on the wall next to it."
	The brass plaque is a fixed in place thing. The brass plaque is here.
	instead of reading the brass plaque, try examining the brass plaque.
		The description of the brass plaque is "it says: [line break][quotation mark][bold type]LIBRARY[roman type][line break](Caution: When in Evanidus, this door will not exist.)[quotation mark]".
	The unusual door is a door. 
			The unusual door is west of the Narrow Corridor and east of the Library Entrance.
			The unusual door is lockable and locked. The matching key of the unusual door is the library card.
			The description of the unusual door is 
				"This door looks slightly different from the others. The wood is richer and brighter, and it opens outward rather than inward. A brass plaque is posted on the wall next to it.".
Before going west from the narrow corridor:
	if the unusual door is unlocked:
		try opening the unusual door;
		say "A draft of air blows past you and the corridor opens up into an impossibly large space. For a moment you feel dizzy as you are overcome by a sudden awareness of your relative smallness. You gaze upward at the huge and distant cieling...";
	otherwise:
		continue the action;

	
The Library Entrance is a room.
	"You are standing in a massive cillindrical atrium which rises twelve stories from ground level terminating in a wide domed cieling of blue glass. On this level, the entire outer wall is lined with shelves of leather-bound books of irregular shape and color. Also spaced along the cylindrical wall are four equidistant spiral staircases that wind clockwise all the way to the top, with landings at each level. Looking up, you can see that each of the floors above are filled with countless winding isles of bookcases that stretch back into unseen parts of the building. Chic and varied pieces of blue and yellow furniture are strategically placed throughout, creating many small comfortable pockets for reclusive reading, Everything, including the stairs, is made with lustrous pieces of rich, polished mahogany. In the center of the dome, some distance away and to the west, you can see what looks to be the library's front desk, though it is hard to tell since the building is completely empty. "
	

The Front Desk
	is west of the Library Entrance.

The Nook
	is north of the Front Desk.
	"A long stroll across the radius of the dome takes you to one of many small, cozy nooks. Here a sofa, a coffee table and a wing-backed chair is sectioned off from the main space by a room-dividing bookshelf."
	The glass display case is a fixed in place closed transparent locked container. 
	The initial appearance of the glass display case is "Near the center of the room there is a glass display case containing many curious items. A small notice is taped to the glass.".
	the glass display case is here.
	The spellbook is in the glass display case.
	The linking book is in the glass display case.
	The encycolpedia frobozzica is in the glass display case.
	The coin pouch is a container.
		five coins are in the coin pouch.
	the coin pouch is in the glass display case.
	The strange orb is in the glass display case.
	the description of the strange orb is "Gazing into the orb, you can see the outlines of many people. They are frozen in place, as if time were stopped.".
the notice is part of the glass display case.
the description of the notice is "It says: [quotation mark]Rare items from oft-imagined worlds.[quotation mark]".
after examining the glass display case:
	say "There is a small notice taped to the glass on top of the display case.";
instead of reading the notice:
	try examining the notice;

The Records Room
	is east of the Hallway.
	The metal fan is here.
	The metal fan is a fixed in place device. The metal fan is switched on. 
	The description of the Records Room is "This is an austere looking room with beige tile floors below and white flourescent lighting overhead. A number of file cabinets line the north and south walls. In the furthest corner is a grey metal desk with two locking drawers and a bankers lamp with a green glass shade. It is uncomfortably warm in here. In the corner, a standing metal fan is [if the metal fan is switched on]noisily failing to cool it.[otherwise]doing nothing to cool it.".
	Some file cabinets are here. The file cabinets are fixed in place.
	
The Archives is a room with the printed name "The Archives".
The Archives is east of the Records Room.
The description of The Archives is "The room opens up into a wide, sprawling space, the center of which is filled with rows upon rows of identical metal desks. The rest of the room is dominated by parallel isles of grey shelving, each of which is stacked with important-looking documents."
	
	A man called Foster is here.
	
	
The More Hallway 
	is a room with the printed name "Hallway".
	The More Hallway is north of the Hallway. 
	"[if unvisited][hallway_long][otherwise][hallway_short]"
	
The Foyer 
	is west of the More Hallway.
	"Despite being an isolated room in the middle of a hallway, this room appears to be a foyer. There is a small sofa and a shoe rack along the west wall. On the north wall, there is a clock. There is a staircase in the northwest corner leading down. The bottom of the stairs is in darkness, but you think you percieve the vague outline of a person there."
	The sofa is here.
	The sofa is scenery.
		"It is a small white fainting sofa, with much ornamentation. The apholstery is plush and pristine, as if never used before. It is fashioned with the same dark, rich wood that all of the furniture seems to be made from."
	The shoe rack is a fixed in place supporter.
	The shoe rack is here.
	The pair of women's heels is on the shoe rack.
	The pair of women's heels is wearable.
		The description of the heels is "The heels are made with black, shiny pleather. The heel is a high stilletto. Looking at them makes you feel pretty and a little embarrassed.".
	
The stair-region is a region. The Stair Landing, the Halfway Down the Stairs, and the Bottom of the Stairs are in the stair-region.

After going down to a stair-region:
	Increase the tension-number of the player by 1;
	if the tension-number of the player is less than 5:
		say "These stairs frighten you. You can feel the tension increasing. [the tension-status]";
	if the tension-number of the player is at least 5:
		say "The terrible feeling that the stairs give you pushes you over the edge. You are completely overwhelmed. You become dizzy, and after a few moments of panicked breathing, you lose consiousness. [line break] ... [line break]";
		now the player is in the w-room;

The Stair Landing 
	is northwest from the Foyer.
	The shadowy figure is here.
	The shadowy figure is a person.
	The staircase is a thing.
	The staircase is fixed in place.
	the staircase is here.
	The description of the staircase is "The stairway is inexplicibly horrifying to you; it conjures up thoughts too terrible to acknowledge and twisted memories of unnameable deeds.".
	


Halfway Down the Stairs is down from the Stair Landing.

The Bottom of the Stairs is down from Halfway Down the Stairs.

The Forest is west of the Bottom of the Stairs.

The Clearing is west of Forest.

The Elevator is west of the clearing.

the down button is a fixed in place device. The down button is in the elevator.
the up button is a fixed in place device. the up button is in the elevator.
Instead of pushing the down button:
	say "the elevator starts to move.";
	change the east exit of the elevator to nothing;




The Place Where you Shouldn't Be  
	is east of the More Hallway.
	"This is a square room with little ornamentation. You feel as if you shouldn't be here."
	The black door is a door. it is north of The Place Where you Shouldn't Be. Through it is the w-room.
	The black door is lockable and locked. The matching key of the black door is the black key.
	The description of the black door is "Unlike the other doors, it has a traditional keyhole. There's something odd about this doorway. It frightens you.".
	
	figure of the symbol is the file "symbol.png".
	After examining the black door:
		display the figure of the symbol.
	

The Even More Hallway 
	is a room with the printed name "Hallway".
	The Even More Hallway is north of the More Hallway. 
	"[if unvisited][hallway_long][otherwise][hallway_short]".
	The player is in the Even More Hallway.
	

Cutting it with is an action applying to two things.
Understand "Cut [something] with [something]" as cutting it with.

Check cutting it with:
	if the second noun is not a knife:
		say "[The second noun] would make a poor knife." instead. 

	the steel knife is here.
		"A steel knife is embedded in the wall nearby."
	The torn piece is in the Even More Hallway. 
	the torn piece is fixed in place.
	The initial appearance of the torn piece is "A torn piece of wall paper hangs limply from the wall.".
	The description of the torn piece is "A torn piece of wall paper.".
	the drinking key card is a thing with the printed name "sticky key-card".
	the description of the drinking key card is "It's all sticky from the wallpaper.".
	the drinking key card is in limbo.
	
instead of taking the knife:
	say "With a firm yank, you dislodge the knife from the wall.";
	now the player is carrying the knife;
	
instead of cutting the torn piece with the knife:
	if the drinking key card is in limbo:
		try taking the knife;
		say "You carefully cut the torn piece from the wall and discard it. A plastic key card is revealed beneath it. It falls to the carpet.";
		now the drinking key card is in the Even More Hallway;
		now the torn piece is in limbo;
		now the description of the torn piece is "It's a torn piece of wallpaper. You have no more use for it.";
	otherwise:
		say  "You already did that!";
instead of cutting the wall paper with the knife:
	if the player is in the Even More Hallway:
		if the drinking card is in limbo:
			try cutting the torn piece with the knife;
		otherwise:
			say "You already did that!";
	otherwise:
		say "Slicing up random sections of wallpaper won't solve anything.";
	

	
The drinking door is a door with the printed name "east door".
The drinking door is east of the Even More Hallway and west of the Drinking Room.
The drinking door is lockable and locked. The matching key of the drinking door is the drinking key card.
	
	
	
The Drinking Room 
	is a room.
		"This room is fully furnished including a white fainting couch, a grandfather clock, and a coffee table. All of the furniture is made of the same dark, rich wood that can be found throughout. On the wall there is a full-sized mirror and a large painting of a woman. In the northeast corner you can see a small metal gate stretched across a doorway. You think you can hear a faint ticking sound."

		The bar is here.
			"There is a fully stocked bar in the corner. It is has a beautiful curved countertop and many shelves of liquors which reach to the cieling behind it. Almost all of the bottles are brand new and sealed."
		The bar is a supporter.
			The bottle of whiskey is on the bar.
				The description of the bottle of whiskey is "You hate whiskey."
			The bottle of vodka is on the bar.
				The description of the bottle of vodka is "You hate vodka.".
			the bottle of gin is on the bar.
				The description of the bottle of gin is "You like gin."
				[the bottle of gin is drinkable.]
			The lemon is on the bar.
				The description of the lemon is "If you think about it for too long, you can taste it."
		The grandfather clock is a fixed in place closed openable container. the grandfather clock is here.
			The initial appearance of the grandfather clock is "You can see a grandfather clock here."
			The description of the grandfather clock is "You try to read it, but you cannot make out the time. It doesn't matter though, because the clock is stopped, and the pendulum is not swinging.".
			the pendulum is a thing with the printed name "[if the evil_presence is on][evil-pendulum][otherwise]pendulum".
			Inside the grandfather clock is the pendulum.
			The description of the pendulum is "[if the evil_presence is on][evil-penduscription][otherwise]It is strangely familiar to you."
			
		The painting of a woman is scenery.
		The painting of a woman is here.
			"The woman is turned away. You cannot see her face."
			
		The metal gate is a door. 
			The metal gate is northeast of the Drinking Room and southwest of the Utility Closet.
			The metal gate is lockable and locked. The matching key of the metal gate is the padlock key.
			The description of the metal gate is 
				"It is a small moveable metal gate, similar to those you have seen guarding elevators in old buildings. It could be easily pushed aside except that it is currently padlocked shut. Behind it is a narrow blue door left slightly ajar. You can see a small room behind it; possibly a closet. There is a sign on the gate that says: WARNING: MAINTENENCE ONLY.".
		
Instead of listening to the Drinking Room, say  "You try to discern the source of the noise, but it seems to come from everywhere and nowhere at once.".

The description of the Utility Closet is
	"This is a cramped, narrow room full of dirty shelves and hardware. The main light source is a pair of florescent tubes which hum unpleasantly overhead; a sound which is augmented by the sqeaking of your feet on the linoleum tiles below. There are many odds and ends on the shelves: scraps of unused wall paper, cans of paste, rollers, an empty bottle of bleach, picture-frames, and two broken clocks. None of these seem useful to you. There is also a yellowed, paint-stained sink.".

	
The Corner 
	is east of the Utility Closet.
	"You wade through the debris and shimmy yourself into the narrow east corner of the utility closet, where it is even dirtier. You notice that the floor is damp here and the linoleum warped. There must have been a disturbance recently, because a cracked can of paste has permanently glued a pile of shattered glass to the floor on the north side of the passage. Behind it is a dingy crawlspace door.".

The broken glass is an unopenable door. The indefinite article is "some".
The broken glass is north of the Corner and south of the Tanks.
the description of the broken glass is "A pile of broken glass is glued to the floor, blocking the way north.".
instead of going through a broken glass:
	if the player is wearing the heels:
		say "The high-heels protect your feet as you gingerly step over the broken glass.";
		if the player is in the Corner:
			now the player is in the Tanks;
		otherwise:
			now the player is in the Corner;
	else:
		say "The broken glass is too sharp for you to cross barefoot.";

After wearing the heels, say "You climb into the patent leather heels and strap them to your feet. They shine pleasantly. You feel pretty, and a little embarrased."
	
The Tanks is a room.
The description of the Tanks is
	"You step through the crawlspace door, and are surprised to find that the passage opens up to a room that is much plainer and easier to navigate. Here, there are five metal tanks that come up to about shoulder height. They are evenly distributed against a red brick wall. Above each tank is a pipe leading to a valve, as if to fill it. Below each tank is a second valve and pipes that lead into the floor below.".
	The sign is a thing. The sign is here.
		The initial appearance of the sign is "There is a sign above the fifth tank."
		The description of the sign is "WARNING: THIS TANK WILL NOT EXIST.".
	
	
	
The Bedroom is west of the Even More Hallway.
	"This looks like a child's bedroom."
	The bed is scenery. 
		The bed is here.
	The wardrobe is a fixed in place opaque closed openable container.
		The wardrobe is here.
	[The night light is a device.
		"[if switched on] The night light glows brightly.[otherwise]The night light is off."
		The night light is here.]
	The cabinet is an opaque closed openable fixed in place container.
	The cabinet is here.
		The description of the cabinet is 
			"It is a small unassuming cabinet made of white wood. In spite of its plainness, it exhudes a strange, foreboding aura."
		Instead of opening the cabinet, say "As you reach for the cabinet, you realize that you cannot touch it. Your hand falls to your side.".
	The nursery rhyme is here.
		The nursery rhyme is a fixed in place thing.
		understand "text" as the nursery rhyme.
		the initial appearance of the nursery rhyme is "There is a framed text on the wall. It looks like a nursery rhyme.".
		the description of the nursery rhyme is "A poem written in violet ink is printed on a lavender page and decorated with bursts of gold and royal blue. In the bottom right corner is an illustration of a little girl lying in bed with a hole in her forehead. It looks like it might be a page out of a children's book.".
		The nightstand is a fixed in place supporter. 
		The drawer is a fixed in place opaque openable closed container.
		The drawer is part of the nightstand.
		The nightstand is here.
			"Against the far wall is a small white nightstand with a single drawer.".
		instead of opening the nightstand:
			try opening the drawer;
	
		The ornamental box is a locked opaque container.
		The ornamental key unlocks the ornamental box.
		The ornamental box is on the nightstand.
		
		The box pile is a thing in the wardrobe with the printed name "tiny boxes". The indefinite article is "many". Understand "tiny box" as the box pile. Understand "tiny boxes" as the box pile. Understand "boxes" as the box pile. The description is "Tiny wooden boxes, all of which are missing their lid." 
		
		A tiny box is a kind of thing.
		the description is "A tiny wooden box. The lid is missing.".
		5 tiny boxes are in the limbo room.
		
instead of opening a tiny box:
	say "it doesn't have a lid.";


the limbo room is a room.
instead of taking the box pile:
	let chosen box be a random tiny box in the limbo room;
	if the chosen box is nothing:
		say "You consider taking another box, but think better of it. You have enough.";
	otherwise:
		move the chosen box to the player;
		say "You take one tiny box.";

The key pile is a thing in the drawer with the printed name "tiny keys". The indefinite article is "many". Understand "tiny key" as the key pile. Understand "tiny keys" as the key pile. Understand "keys" as the key pile. The description is "The drawer is filled to the brim with tiny gold keys." 
		
		A tiny key is a kind of thing.
		the description is "A tiny gold key".
		5 tiny keys are in the limbo room.



the limbo room is a room.
instead of taking the key pile:
	let chosen key be a random tiny key in the limbo room;
	if the chosen key is nothing:
		say "You consider taking another key, but think better of it. You have enough.";
	otherwise:
		move the chosen key to the player;
		say "You take one tiny key.";

[how to remove take all]
[After reading a command:
if the player’s command matches “take all”:
replace the player’s command with “fail”.

failing is an action applying to nothing. Understand “fail” as failing.

Carry out failing:
say “That doesn't work.”]


	


		

		
instead of taking the nursery rhyme:
	say "It is fixed to the wall.";
instead of reading the nursery rhyme:
	say "[line break][bold type]ELORA[roman type] [line break][line break][italic type]Elora keeps a tiny box beside her bed. [line break]And every night when she retires,[line break]she pulls a sticky silver thread[line break]straight between her eyes and out her forehead.[line break] [line break]At length, she's pulled a dozen feet or so.[line break]She tears it off between her teeth,[line break]and bundles it around her thumbs,[line break]and in the box it goes.[line break][line break]Like spider silk, the substance soon restores.[line break]Each night she must extract a little more.[line break]A bit of string's no burden on a box,[line break]but soon it filled to bursting, so she fetched the locks.[line break][line break]A key for a lock, a box for a key, a lid for the box that held it.[line break]A second, a third, and every box so full she could barely close it.[line break]A fortnight or two and she's bricked herself completely into her room.[line break]Then over the balcony the boxes go [apostrophe]till she's bricked her windows too.[line break][line break]Then at last a night came she had no place left to keep it.[line break]The sticky substance filled her head; she'd no choice but to see it.[line break] And then it filled her up so much it dripped into her eyes.[line break]And across her vision cast a veil of webby spider ties. [roman type][line break][line break]".

The Yet More Hallway is a room with the printed name "Hallway".
The Yet More Hallway is north of the Even More Hallway. 
	"[if unvisited][hallway_long][otherwise][hallway_short]".

[Mall zone start]	

The Old Mall is west of the Yet More Hallway.
	"The hallway opens up into what appears to be an empty shopping mall. There is a high domed cieling with skylights overhead. The floor transitions from the carpeted hallway to over-large tan octagonal tiles. They air is cool here and slightly more humid, as if there were a water source nearby. You think you may even hear the distant trickle of water. A few small trees can be seen in planters, spaced decoratively. In contrast to the tense and silent hallway, this space is pleasant and serene. You can see the entrance to several shops. The Ordinary Shop is to the northeast, the Extraordinary Shop is to the northwest, and The Lonely and Dark stores are to the east and west respectively. There is also an escalator leading up to a second floor."

The Nothing Shop is north of the Old Mall.
	"This room is completely dark."
	In the Nothing Shop is a neuter animal called nothing.
	it carries the meaning.
	Giving up is an action applying to nothing. Understand "give up" as giving up. 
	
instead of giving up:
	if the location is the Nothing Shop:
		say "Nothing stops you from giving up. Nothing gives you meaning.";
		now the player carries the meaning;
	otherwise:
		say "When you decide to give up, nothing can stop you.";
		end the story finally saying "YOU HAVE GIVEN UP";
	
The Something Shop is  west of the Old Mall.
	"This room is completely dark."
	Dude is a man with the printed name "something".
		"You sense that something is here."
	Dude is in the Something Shop.
Rule for printing a parser error:
	If the location is the Something Shop:
		say "You grope around in the dark for a while, but cannot find it.";
	otherwise:
		continue the action.

After doing anything except looking, reading, or going while the player is in the Something Shop: say "Something tells you  (put conditional here later)".

	
The Lonely Room is south of the Old Mall.
	The description of the Lonely Room is "This is a small room."
	In The Lonely Room is a neuter animal called you.
	the initial appearance of you is "You are the only thing here. ".
	the description of you is "You are the only thing here.".
	The you carries a thing called your secret.
	the description of your secret is "Don't worry. No one knows your secret.".
	Thanking is an action applying to one thing. Understand "thank [something]" as thanking. 
	Instead of thanking the you:
		now the player is carrying the secret;
		say "As you thank yourself, you experience a warm feeling of satisfaction. You have been working so hard to manage things in spite of these stressful circumstances, and to hear yourself validate those efforts fills you with peace. You are so grateful for this act of kindness that you decide to share your secret with yourself at last, after a lifetime of keeping it tucked away in the back of your mind. Your relief is immesurable.";
	Check thanking: if the thing is not your secret, say "There is no response." instead. 
	Instead of dropping your secret: say "Your secret is precious to you. You would rather not leave it laying around for anyone to find.".



The d-room 
	is a room with the printed name "Darkness".
	The d-room is southwest of the Old Mall.
	The description of the d-room is "It is dark here.".
	The darkness is here. "You see nothing but the darkness.".
		The darkness is an opaque closed fixed in place openable container. 
			The description of the darkness is "[if open]The yawning darkness is all around you.[otherwise]You gaze into the darkness." .
			The black key is in the darkness.
			The description of the black key is "It is a black key. It frightens you.".
			After taking the black key, say "As you take the key, you are breifly overcome by a wave of vertigo. A knot forms in your stomach, and you have the terrible feeling that you have taken something which does not belong to you.".
			
			


	
Up from the old mall is Second Floor Landing.



	

The Hallway End 
	is a room with the printed name "Hallway".
	The Hallway End is north of the Yet More Hallway. 
	"[if unvisited][hallway_long][otherwise][hallway_short]". 
	
[MAZE CODE-----------------------------------------------------------------------]	


Color is a kind of value. 
The wall_color is a color that varies. 
yellow is a color. 
burgundy is a color.
mauve is a color.
The wall_color is initially yellow.

[mazelands]
The mazelands is a region. maze1, maze2, maze3, maze4, maze5, maze6, maze7, maze8, maze9, and maze10 are in the mazelands.


instead of going nowhere in the mazelands, say "You try going [noun], but there isn't an exit there.".
instead of doing it for the second time, say "You try going [noun], but there isn't an exit there. You are beginning to feel lost.".
instead of doing it for the third time, say "You try going [noun], but there isn't an exit there. You are beginning to panic.".
instead of doing it for the fourth time, say "You try going [noun], but there isn't an exit there. Your panic is increasing.".
Instead of doing it more than four times, say "You run headfirst into the [noun] wall. There isn't an exit there. You can feel the tension in the back of your mind increasing.".





[maze definition]
A maze is a kind of room with the printed name "Indistinguishable Corridors".
every maze is in the mazelands.
	the description is "You are in an empty corridor like many others. The wallpaper is [wall_color] here.".
	Rule for listing exits when the location is a maze: say "These hallways are identical. There are exits here, but you have lost your sense of direction.".



[mase rooms]	
The Empty Corridor is west of the Hallway End. 
	"This is a long section of empty hallway. Further west, you see that the hallway diverges into similar looking corridors with no doors, no furniture and no ornamentation. You sense that if you keep going to the west, you may become lost. The wallpaper is [wall_color] here.".


[correct path]	
	The maze1 is west of the Empty Corridor.
		The maze1 is a maze.
	The maze2 is south of maze1.
		the maze2 is a maze.
	the maze3 is west of maze2.
		the maze3 is a maze.
	the maze4 is west of maze3.
		the maze4 is a maze.
	the maze5 is north of maze4.
		the maze5 is a maze.
	the maze6 is north of maze5.
		the maze6 is a maze.
		

[other rooms]
	the maze7 is south of maze10.
		the maze7 is a maze.
	The maze8 is east of maze7.
		the maze8 is a maze.
	the maze9 is north of maze3.
		the maze9 is a maze.
	the maze10 is south of maze2.
		the maze10 is a maze.
	the maze11 is south of maze3.
		the maze11 is a maze.
	the maze12 is west of maze11.
		the maze12 is a maze.
		

[machine code]
	 An on/off button is a kind of device. 
Instead of pushing an on/off button which is part of a device (called the machine):
	If the machine is switched off:
		try switching on the machine; 
	else:
		try switching off the machine.
A wall_changing button is a kind of device. 
Instead of pushing a wall_changing button which is part of a device (called the machine):
	If the machine is switched on:
		if the wall_color is not burgundy:
			say "You hear a terrible whirring sound and feel a passing wave of nausia.";
			now the wall_color is burgundy;
		else:
			say "Nothing seems to have happened.";
	else:
		say "Nothing seems to have happened"
		
The m-room is a  room with the printed name "Machine Room".
	the m-room is west of the maze6.
	The machine is a device.
	The machine is here.
		"There is a grey button, a red button, and a red lever on the machine."
	The grey button is an on/off button.
	The grey button is part of the machine.
		the grey button  is a fixed in place device.
	The red button is a wall_changing button.
	The red button is part of the machine.
		the red button is a fixed in place device.
	The red lever is part of the machine.
		The red lever is a fixed in place device. 
		Instead of pushing a red lever: try switching on the red lever.
		Instead of pulling a red lever: try switching off the red lever.
[red lever code]




[NAV SUBVERSION] The Hallway is north of the Hallway End.

The Outside Room is east of the Hallway End. 
	"Opening the door reveals what at first looks to be a wide outdoor space filled with shrubs and grasses. A fog hangs in the air above you, obscuring the view upward. The illusion is broken by many white pillars holding up what must be a distant cieling. In the east corner of this large room is a small plastic house.".

instead of entering something:
	if the player is in the Outside Room:
		now the player is in the Play House;
	


East of the Outside Room is the Play House. 
	The Play House is a room. [Inform needs this specification here]
	"This house would be very cozy if it weren't sized for children. There is a kitchenette complete with a table, plastic stove and refrigerator, and a living room which contains a chair, a small throw rug, and a well-drawn picture of a television. There are many clocks drawn on the walls in crayon, each telling different times.". 

	The stove is a opaque closed openable container. The stove is fixed in place. The stove  is here.
		"A little plastic stove that opens and closes."
	The refrigerator is a opaque closed container. The refrigerator is fixed in place. The refrigerator is here.
		"A plastic refrigerator that opens and closes."
	Inside the stove is a plastic turkey.
		The description of the turkey is "Some things are exactly as they seem."
	The table is a supporter. The table is here.
		The description of the table is "A child-sized table."
	On the table is a plastic toaster.
		The description of the toaster is "Good for plastic toast, you imagine."
	The drawing of a television is scenery in the Play House. 
		"You watch an imaginary news program on the imaginary television for a while before becoming bored and giving up."
	The clocks is scenery in the Play House. 
		"Many clocks of different colors are drawn on the walls in crayon. They each tell different times, but strangely, you have trouble reading any of them."
	The chair is scenery in the Play House.
		"It's a comfy looking chair, but it is too small to sit on."
	The throw rug is scenery in the Play House.
		"The throw rug is too big to lug around, but too small to sit on comfortably.".



[the test room]
the test room is a room.
	inside the test room is a man called the inventory expert.


Victoria is a woman.
	Victoria is in the test room.
	After asking victoria about "Evanidus", say "She says: [quotation mark]What, the whole world? You'll need to be more specific.[quotation mark]"


The Corridors is a region. The Hallway and the More Hallway and the Even More Hallway and the Yet More Hallway and the Hallway End are in the Corridors.
Before going to a corridors from a corridors:
	say "[line break]...you walk some distance down the length of the hallway until you arrive at the next set of adjacent doors...[line break]";

[Rule for printing the locale description of a room in the Corridors:
	say "Mist coils around your feet, thick as a blanket. You cannot even see the ground you walk upon." instead]

The wall paper is a backdrop. 
The description of the wall paper is "The wall paper is a rich navy and powder-blue damask pattern. Combined with the dark wooden wainscotting, it gives the hallways an unnderving air of false comfort, with vauge suggestions of austerity."

The wall paper is in the Corridors.


[backdrops]
The mirror is a backdrop. The mirror is in The Drinking Room and the Bedroom. 
	"Closer inspection reveals that it is not a mirror, but a picture of a mirror. You cannot see your reflection."
The wall clock is a backdrop. The wall clock is in The Foyer.
	The description of the wall clock is "A closer look reveals that it is not actually a clock, but a picture of a clock firmly attached to the wall. You cannot make out the time in the picture.".
The plastic house is a backdrop. the plastic house is in the Outside Room and the Play House.
	The description is "It looks like a child's play house.".



[------------------------------------------------------------------------------------]	


[BOOK CODE---------------------------------------------------------------------]

[The mysterious book has a number called the last page read. The sinister book has a number called the length. The length of the sinister book is 3.]

[exit rules]
Rule for listing exits when the location is The Corner: say "You can go west to the Utility Closet. The path to the north is blocked by the broken glass."
Rule for listing exits when the location is The Tanks: say "The path to the south is blocked by the broken glass."
Rule for listing exits when evil_presence is on:
	stop.

[evil rules]
evil is a kind of value. 
The evil_presence is a evil that varies. 
on is a evil. 
off is a evil.
the evil_presence is initially off.


[evil room rules; use these to teleport items out of the game]
the evil room is a room.
the green button [replace this with whatever mechanism the player uses] is in the evil room [change this to whatever room the player is in].
instead of pushing a green button:
	now the evil_presence is on;
	now the left hand status line is "You don't belong here";
	move the walls [replace this with whatever you want to get rid of] to the evil room.
	[note that you could also change item names to something horrifying here. Like making the key a venomous snake or a disgusting blob of puss]
	


[remember to put an if-else conditional in every room description and printed name to use this]		
To say evil-description:
	say "You shouldn't be here.";
to say evil-printname:
	say "Get Out.";
to say evil-pendulum:
	say "venemous snake";
to say evil-penduscription:
	say "It writhes menacingly.";
to say evil-blackkey:
	say "ball of puss";
to say evil-blackdescription:
	say "As you hold it up to examine it, the yellow and grey globule oozes in your hand. Its nauseating stench makes you gag.".


The player has a number called the tension-number. The tension-number of the player is 3.	




to say the tension-status:
	if the tension-number of the player is 0:
		say "you are completely relaxed.";
	otherwise if the tension-number of the player is 1:
		say "you are slightly tense.";
	otherwise if the tension-number  of the player is 2:
		say "you are a little tense.";
	otherwise if the tension-number  of the player is 3:
		say "you are very tense.";
	otherwise if the tension-number  of the player is 4:
		say "you are extremely tense.";
	otherwise if the tension-number  of the player is 5:
		say "You are overwhelmed."
		
the booze is a thing. the player is carrying the booze.
[drinking]
A person is either drunk or sober. A person is usually sober.
A person has a number called the drunk-timer. the drunk-timer of the player is 0.	
instead of drinking the booze:
	now the player is drunk;
	now the booze is nowhere;
	decrease the tension-number of the player by 3;
	say "You down it in one gulp. It relaxes you. You can feel the tension in the back of your mind decreasing.";
	If the tension-number of the player is less than 0:
		say "That was a little more than you can handle.";
	If the tension-number of the player is at least 0:
		say "[the tension-status]";


	
	



A wall_value is a kind of value. 1 wall specifies a wall_value.



[new actions]

[Thanking is an action applying to one animal.]

[book code]
	 The solutions manual is carried by the player. The solutions manual has a number called the last page read. The solutions manual has a number called the length. The length of the solutions manual is 6. 

	Understand the command "read" as something new. 

	Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading. Reading is an action applying to one thing, requiring light. 

	Understand "read [number] in/from/of [something]" or "read page [number] in/from/of [something]" or "look up page [number] in/from/of [something]" or "consult page [number] in/from/of [something]" as reading it in. Reading it in is an action applying to one number and one thing, requiring light. 

	Named page is a kind of value. The named pages are first page, last page, next page, previous page. 

	To decide what number is the effective value of (L - last page):
		decide on the length of the solutions manual. 

	To decide what number is the effective value of (F - first page):
		decide on 1. 

	To decide what number is the effective value of (N - next page):
		let X be the last page read of the solutions manual plus 1;
		decide on X. 

	To decide what number is the effective value of (P - previous page):
		let X be the last page read of the solutions manual minus 1;
		decide on X. 

	Understand "read [named page] in/from/of [something]" or "read the [named page] in/from/of [something]" as reading it relatively in. Reading it relatively in is an action applying to one named page and one thing, requiring light. 

	Does the player mean reading something in the solutions manual: it is very likely. 

	This is the book requirement rule:
		if the player is not carrying the solutions manual, say "Read what?." instead. 

	Check reading it relatively in:
		if the second noun is not the solutions manual, say "You'd rather not." instead;
		abide by the book requirement rule. 

	Carry out reading it relatively in:
		let N be the effective value of the named page understood;
		now the number understood is N;
		try reading N in the solutions manual. 

	Check reading it in:
		if the second noun is not the solutions manual, say "You'd rather not." instead;
		abide by the book requirement rule. 

	Check reading it in:
		if the number understood is greater than the length of the solutions manual, say "There are only [length of solutions manual in words] pages in the book." instead;
		if the number understood is less than 1, say "The page numbering begins with 1." instead. 

	Carry out reading it in:
		read page number understood. 

	Check reading:
		if the noun is not the solutions manual, say "You'd rather not." instead;
		abide by the book requirement rule. 

	Carry out reading:
		let N be a random number between 1 and the length of the solutions manual; now the number understood is N;
		say "You flip the pages randomly and arrive at page [the number understood]:[paragraph break]";
		try reading the number understood in the solutions manual. 

	Table of Book Contents
page	content
1	"THE DARKNESS OPENS UP."
2	"THANK YOU."
3	"NOTHING HAS MEANING. LET NOTHING STOP YOU FROM GIVING UP."
4	"SOMETHING IS WRONG."
5	"AMAZING."
6	"THE WORLD."



To read page (N - a number):
	now the last page read of the solutions manual is N;
	if there is a content corresponding to a page of N in the Table of Book Contents:
		choose row with a page of N in the Table of Book Contents;
		say "It says: '[content entry]'[paragraph break]";
	otherwise:
		say "Page [N] appears to be blank." 
		
figure of the mazemap is the file "mazemap.png".	
figure of the evilpage is the file "manual_evil.png".
After reading the number understood in the solutions manual:
	if the evil_presence is on:
		display the figure of the evilpage;
	otherwise:	
		if the number understood is 5:
			display the figure of the mazemap;	
		otherwise:
			continue the action;
			

[
	Table of Announcements
level	phrase
1	"YOU SHOULDN'T BE HERE." [instead of tension, for the rest of the game you feel panic]
3	"THESE ARE NOT YOUR HALLWAYS."' [room names change]
4	"THAT IS NOT YOUR DRESS." [dress is removed]
5	"THOSE ARE NOT YOUR SHOES." [shoes are removed]
6	"DID YOU REALLY THINK THAT WAS A NECKLACE?" 
7	"NOW, IT ISN'T." [necklace becomes ball python. neck tightens uncomfortably, sense something has changed. must check inventory to understand what.]
9	"I'LL MAKE YOU REGRET TOUCHING MY THINGS." [your items turn into disgusting or deadly things]
2	"I GET TO DECIDE WHAT HAPPENS HERE." [a huge piece of drywall falls out of the wall and nearly misses you]
7	"I GET TO DECIDE WHAT'S IN THESE ROOMS." [a giant deadly scorpian is in the room]
8	"I GET TO DECIDE WHAT'S IN YOUR POCKETS." [new stuff enters your pocket that could kill you]
10	"I GET TO DECIDE WHAT MATTERS HERE. " [feeling of foreboding]
11	"YOU DON'T." [now you can't move]

11	"GET OUT OF MY HALLWAYS." [a black cloud]
12 	"GET OUT OF MY HOME" [cloud gets worse]
13	"GET OUT GET OUT GET OUT GET OUT" [cloud crackles with electricity]
14	"DIE!" [player deis, game ends]

[note also that there should be specific events that happen only if the player makes it to certain locations or does certain things]
]



[game settings]

Rule for printing room description details of containers:
	 stop.	
	

		

