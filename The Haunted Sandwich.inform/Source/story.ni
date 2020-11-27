"The Haunted Sandwich" by "Y'Gael of Atrii"

limbo is a room.
The empty glass bottle is a container.
The empty glass bottle is in limbo.

the player is in the Kitchen.
the Living Room is north of the kitchen.



[Kitchen]
[=======]
The Kitchen is a room.
[Items]
the mystery jar is in the kitchen.
the mystery jar is an openable container.
the slate is in the kitchen.
the piece of chalk is in the kitchen.
The whiskey is in the kitchen. The indefinite article is "A bottle of".
The cup is in the kitchen.
the cup is a container. water is in the cup. 

[Interactions]

	
[advanced rules]
A thing is either a liquid or a solid.
A thing is usually a solid.
A thing is either a booze or a not_booze.
A thing has some text called the vessel.

water is a liquid.
the vessel of the whiskey is "a bottle of".
The vessel of the water is "a cup of".
whiskey is a liquid.
whiskey is a booze.

Imbibing is an action applying to one thing.

Instead of drinking something:
	try imbibing the noun;


A person can be either drunk or sober. A person is usually sober. 
A person has a number called the drunkeness. The drunkeness is usually 0.
A thing has a number called booziness. The booziness is usually 0.
The booziness of the whiskey is 20.

Check imbibing:
	if the noun is not a liquid:
		say "You must be joking." instead;
	otherwise:
		continue the action;

Report imbibing:
	say "You down the [noun] in one gulp.";
	now the noun is in limbo;
	if the noun is a booze:
		now the player is drunk;
		increase the drunkeness of the player by the booziness of the noun;
		say "[the drunkeness of the player]";
	
Every turn while the player is drunk:
	if the drunkeness of the player is greater than 0:
		decrease the drunkeness of the player by 1;
		say "[the drunkeness of the player]";
	otherwise:
		now the player is sober;
	

After imbibing the whiskey:
	now the player carries the empty glass bottle.





