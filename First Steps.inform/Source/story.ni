"Hallways"

[

ROOM TEMPLATE:

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


The w-room 
	is a room with the printed name "Walls".
	"[if the evil_presence is on] [evil-description] [otherwise] You are standing on a slab of concrete that is four foot square. Around you on every side are grey brick walls that stretch upward indefinitely. Your fear resolves into a grim sense of familiarity, and a heavy burden lifts from your shoulders. You feel oddly at peace.".
	The walls are here. The indefinite article is "the".
	The walls is fixed in place.
	The description of the walls is "The walls are unyielding."

The Hallway is a room. 
	"You are in a long hallway.  Identical doors are spaced regularly along the walls on either side. Many of the doors are closed and locked, but there are two doors to your immediate left and right (east and west) that are slightly ajar, and you can see two similar doors further down the hallway. There a door to the south, and something about it is deeply disquieting, ordinary as it looks. The wall paper is a rich navy and powder-blue damask pattern. Combined with the dark wooden wainscotting, it gives the hallways an unnderving air of false comfort, with vauge suggestions of austerity.The air feels unnaturally still here."
	




The More Hallway 
	is north of the Hallway. 
	"You are in a long hallway.  Identical doors are spaced regularly along the walls on either side. Many of the doors are closed and locked, but there are two doors to your immediate left and right (east and west) that are slightly ajar, and you can see two similar doors further down the hallway. The wall paper is a rich navy and powder-blue damask pattern. Combined with the dark wooden wainscotting, it gives the hallways an unnderving air of false comfort, with vauge suggestions of austerity."
	
The Foyer 
	is west of the More Hallway.
	"Despite being an isolated room in the middle of a hallway, this room appears to be a foyer. There is a small sofa and a shoe rack along the west wall. On the north wall, there is a clock. There is a staircase in the northwest corner leading down. The bottom of the stairs is in darkness, but you think you percieve the vague outline of a person there."
	The sofa is here.
	The sofa is scenery.
		"It is a small white fainting sofa, with much ornamentation. The apholstery is plush and pristine, as if never used before. It is fashioned with the same dark, rich wood that all of the furniture seems to be made from."
	The shoe rack is a fixed in place supporter.
	The shoe rack is here.
	[The pair of women's heels is on the shoe rack.]
	The pair of women's heels is wearable.
		The description of the heels is "The heels are made with black, shiny pleather. The heel is a high stilletto. Looking at them makes you feel pretty and a little embarrassed.".



The Stair Landing 
	is northwest from the Foyer.
	"You are standing on the landing of a dark staircase."
	The shadowy figure is here.
	The shadowy figure is a person.



The Place Where you Shouldn't Be  
	is east of the More Hallway.
	"This is a square room with little ornamentation. You feel as if you shouldn't be here."
	The black door is a door. it is north of The Place Where you Shouldn't Be. Through it is the w-room.
	The black door is lockable and locked. The matching key of the black door is the black key.
	The description of the black door is "It frightens you.".
	



The Even More Hallway is north of the More Hallway. 
	"You are in a long hallway.  Identical doors are spaced regularly along the walls on either side. Many of the doors are closed and locked, but there are two doors to your immediate left and right (east and west) that are slightly ajar, and you can see two similar doors further down the hallway. The wall paper is a rich navy and powder-blue damask pattern. Combined with the dark wooden wainscotting, it gives the hallways an unnderving air of false comfort, with vauge suggestions of austerity. Near the east door, there is a spot on the wall where the wallpaper is peeling. You see a torn piece."
	The torn piece is in the Even More Hallway. 
	The initial appearance of the torn piece is "A neat section of the blue damask wall paper has torn, revealing a patch of yellow beneath it. You admire the torn piece."
	The description of the torn piece is "A torn piece of wall paper hangs limply from the wall."
	
The Drinking Room is east of the Even More Hallway.
		"This room is fully furnished including a white fainting couch, a grandfather clock, and a coffee table. All of the furniture is made of the same dark, rich wood that can be found throughout. On the wall there is a full-sized mirror and a large painting of a woman. In the northeast corner you can see a small metal gate stretched across a doorway. You think you can hear a faint ticking sound."

		The bar is here.
			"There is a fully stocked bar in the corner. It is has a beautiful curved countertop and many shelves of liqours which reach to the cieling behind it. Almost all of the bottles are brand new and sealed."
		The bar is a supporter.
			The bottle of whiskey is on the bar.
				The description of the bottle of whiskey is "You hate whiskey."
			The bottle of vodka is on the bar.
				The description of the bottle of vodka is "You hate vodka."
			The bottle of gin is on the bar.
				The description of the bottle of gin is "You like gin."
			The lemon is on the bar.
				The description of the lemon is "If you think about it for too long, you can taste it."
		The grandfather clock is a fixed in place closed openable container. the grandfather clock is here.
			The initial appearance of the grandfather clock is "You can see a grandfather clock here."
			The description of the grandfather clock is "You try to read it, but you cannot make out the time. It doesn't matter though, because the clock is stopped, and the pendulum is not swinging."
			Inside the grandfather clock is a pendulum.
			The description of the pendulum is "It is strangely familiar to you."
			
		The painting of a woman is scenery.
		The painting of a woman is here.
			"The woman is turned away. You cannot see her face."
			
		The metal gate is a door. 
			The metal gate is northeast of the Drinking Room and southwest of the Utility Closet.
			The metal gate is lockable and locked. The matching key of the metal gate is the padlock key.
			The description of the metal gate is 
				"It is a small moveable metal gate, similar to those you have seen guarding elevators in old buildings. It could be easily pushed aside except that it is currently padlocked shut. Behind it is a narrow blue door left slightly ajar. You can see a small room behind it; possibly a closet. There is a sign on the gate that says: WARNING: MAINTENENCE ONLY."
			
The description of the Utility Closet is
	"This is a cramped, narrow room full of dirty shelves and hardware. The main light source is a pair of florescent tubes which hum unpleasantly overhead. This is augmented by the sqeaking of your feet on the linoleum tiles below. There are many odds and ends on the shelves: scraps of unused wall paper, cans of paste, rollers, an empty bottle of bleach, picture-frames, and two broken clocks. None of these seem to  be useful to you. There is also a yellowed, paint-stained sink.".

	
The Corner is east of the Utility Closet.
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
		say "the broken glass is too sharp for you to cross barefoot.";

	
The Tanks is a room.
The description of the Tanks is
	"You step through the crawlspace door, and are surprised to find that the passage opens up to a room that is much plainer and easier to navigate. Here, there are five metal tanks that come up to about shoulder height. They are evenly distributed against a red brick wall. Above each tank is a pipe leading to a valve, as if to fill it. Below each tank is a second valve and pipes that lead into the floor below.".
	The sign is a thing. The sign is here.
		The initial appearance of the sign is "There is a sign above the fifth tank."
		The description of the sign is "WARNING: THIS TANK WILL NOT EXIST.".
	
	
The Bedroom is west of the Even More Hallway.
	"This looks like a bedroom. There is a bed, a wardrobe, and a mirror. There is also a small night light plugged into an outlet in the wall."
	The bed is scenery. 
		The bed is here.
	The wardrobe is a fixed in place opaque closed openable container.
		The wardrobe is here.
	The night light is a device.
		"[if switched on] The night light glows brightly.[otherwise] The night light is off."
		The night light is here.
	

The Yet More Hallway is north of the Even More Hallway. 
	"You are in a long hallway.  Identical doors are spaced regularly along the walls on either side.  Many of the doors are closed and locked, but there are two doors to your immediate left and right (east and west) that are slightly ajar, and you can see two similar doors further down the hallway. The wall paper is a rich navy and powder-blue damask pattern. Combined with the dark wooden wainscotting, it gives the hallway an unnderving air of false comfort, with vauge suggestions of austerity. You can see the end of the hallway to the north. ".

[Mall zone start]	

The Old Mall is west of the Yet More Hallway.
	"The hallway opens up into what appears to be an empty shopping mall. There is a high domed cieling with skylights overhead. The floor transitions from the carpeted hallway to over-large tan octagonal tiles. They air is cool here and slightly more humid, as if there were a water source nearby. You think you may even hear the distant trickle of water. A few small trees can be seen in planters, spaced decoratively. In contrast to the tense and silent hallway, This space is pleasant and serene. You can see the entrance to several shops. The Ordinary Shop is to the northeast, the Extraordinary Shop is to the northwest, and The Lonely and Dark stores are to the east and west respectively. There is also an escalator leading up to a second floor."

The Ordinary Room is north of the Old Mall.
	"This room is completely dark."
	In the Ordinary Room is a neuter animal called nothing.
	it carries the meaning.
	
The Extraordinary Room is  west of the Old Mall.
	"This room is completely dark."
	In the Extraordinary Room is a man called something.
	
The Lonely Room is south of the Old Mall.
	The description of the Lonely Room is "This is a small room."
	In The Lonely Room is a neuter animal called you.
	the initial appearance of you is "You are the only thing here. ".
	the description of you is "You are the only thing here.".
	The you carries a thing called your secret.
	the description of your secret is "It's alright. No one knows your secret.".



The d-room 
	is a room with the printed name "Darkness".
	The d-room is southwest of the Old Mall.
	The description of the d-room is "It is dark here.".
	The darkness is here. "You see nothing but the darkness.".
		The darkness is an opaque closed fixed in place openable container. 
			The description of the darkness is "[if open]The yawning darkness is all around you.[otherwise]You gaze into the darkness. It feels as if it could open up." .
			The black key is in the darkness.
			The description of the black key is "It is a black key. It frightens you.".

	
Up from the old mall is Second Floor Landing.



	

The Hallway End is north of the Yet More Hallway. 
	"The hallway seems to end here. There are doors to the north, east, and west. There is something deeply disquieting about the doorway to the north, ordinary as it appears.". 
	
[MAZE CODE-----------------------------------------------------------------------]	

[wall color, set to yellow.]
Color is a kind of value. 
The wall_color is a color that varies. 
yellow is a color. 
burgundy is a color.
mauve is a color.
The wall_color is initially yellow.

[mazelands]
The mazelands is a region. maze1, maze2, maze3, maze4, maze5, maze6, maze7, maze8, maze9, and maze10 are in the mazelands.

[maze definition]
A maze is a kind of room with the printed name "Indistinguishable Corridors".
every maze is in the mazelands.
	the description is "You are in an empty corridor like many others. The wallpaper is [wall_color] here.".
	Rule for listing exits when the location is a maze: say "These hallways are identical. You panic. You have lost your sense of direction."



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

	.



A wall_changing button is a kind of device. 
Instead of pushing a wall_changing button which is part of a device (called the machine):
	If the machine is switched on:
		if the wall_color is not burgundy:
			say "You hear a terrible whirring sound and feel a passing wave of nausia.";
			now the wall_color is burgundy;
		else:
			say "Nothing seems to have happened.";
	else:
		say "nothing seems to have happened"
		
The m-room is a  room with the printed name "Machine Room".
	the m-room is west of the maze6.
	The machine is a device.
	The machine is here.
		"There is a grey button, a red button, and a red lever on the machine."
	The grey button is an on/off button.
	The grey button is part of the machine.
		the grey button  is a fixed in place device.
	The red button is an wall_changing button.
	The red button is part of the machine.
		the red button is a fixed in place device.
	The red lever is part of the machine.
		The red lever is a fixed in place device. 
		Instead of pushing a red lever: try switching on the red lever.
		Instead of pulling a red lever: try switching off the red lever.
[red lever code]




[NAV SUBVERSION] The Hallway is north of the Hallway End.

The Outside Room is east of the Hallway End. 
	"Opening the door reveals what at first looks to be a wide outdoor space filled with shrubs and grasses. A fog hangs in the air above you, obscuring the view upward. The illusion is broken by many white pillars holding up what must be a distant cieling. In the east corner of this large room is a small plastic house."


East of the Outside Room is the Play House. 
	The Play House is a room. [Inform needs this specification here]
	"This house would be very cozy if it weren't sized for children. There is a kitchenette complete with a table, plastic stove and refrigerator, and a living room which contains a chair, a small throw rug, and a well-drawn picture of a television. There are many clocks drawn on the walls in crayon, each telling different times." 
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
		"The throw rug is too big to lug around, but too small to sit on comfortably."



The tension is a backdrop. "You can feel a persistant, inesplicable tension in the air." The tension is everywhere.
The Corridors is a region. The Hallway and the More Hallway and the Even More Hallway and the Yet More Hallway and the Hallway End are in the Corridors.

The wall paper is a backdrop. 
The description of the wall paper is "The wall paper is a rich navy and powder-blue damask pattern. Combined with the dark wooden wainscotting, it gives the hallways an unnderving air of false comfort, with vauge suggestions of austerity."

The wall paper is in the Corridors.


[backdrops]
The mirror is a backdrop. The mirror is in The Drinking Room and the Bedroom. 
	"Closer inspection reveals that it is not a mirror, but a picture of a mirror. You cannot see your reflection."
The wall clock is a backdrop. The wall clock is in The Foyer.
	The description of the wall clock is "A closer look reveals that it is not actually a clock, but a picture of a clock firmly attached to the wall. You cannot make out the time in the picture.".



[------------------------------------------------------------------------------------]	


[BOOK CODE---------------------------------------------------------------------]

[The mysterious book has a number called the last page read. The sinister book has a number called the length. The length of the sinister book is 3.]

[exit rules]
Rule for listing exits when the location is The Corner: say "You can go west to the Utility Closet. The path to the north is blocked by the broken glass."
Rule for listing exits when the location is The Tanks: say "The path to the south is blocked by the broken glass."
Rule for listing exits when evil_presence is on:
	say "".

[evil rules]
evil is a kind of value. 
The evil_presence is a evil that varies. 
on is a evil. 
off is a evil.
the evil_presence is initially off.


[evil room rules; use these to teleport items out of the game]
the evil room is a room.
the green button [replace this with whatever mechanism the player uses] is in the evil room.
instead of pushing a green button:
	now the evil_presence is on;
	move the walls [replace this with whatever you want to get rid of] to the evil room.
	[note that you could also change item names to something horrifying here. Like making the key a venomous snake or a disgusting blob of puss]

[change these two values below to be something that varies when the evil part comes]
Rule for printing the name of a room:
	if the evil_presence is on, say "test";
	omit contents in listing. 
[remember to put an if-else conditional in every room description to use this]		
To say evil-description:
	say "test";