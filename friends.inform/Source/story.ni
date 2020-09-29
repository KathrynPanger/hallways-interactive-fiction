Understand the command "read" as something new. 

The eyes are a backdrop. The eyes are everywhere.
instead of closing the eyes:
	if the book_trance is on:
		say "You try to close your eyes, but you only blink. You feel compelled to keep reading.";
	otherwise:
		say "You close your eyes briefly. Unsurprisingly, it solves nothing.";

Reading is an action applying to one thing, requiring light. Understand "read [something]" as reading.

The Ordinary Room is a room.
the player is in the Ordinary Room.
The white book is in the Ordinary Room.
The white book is a thing with the printed name "book".
the initial appearance of the white book is "You see a white book here.".
the description of the white book is "A white hard-cover book with a blank cover. The title says: [quotation mark]YOU WILL READ THIS BOOK[quotation mark].".


The Hallway is a room.

trance is a kind of value. 
The book_trance is a trance that varies. 
on is a trance. 
off is a trance.
the book_trance is initially off.

Instead of reading the white book:
	now the player is carrying the white book;
	now the book_trance is on;
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
			
instead of doing something when the book_trance is on: 
	if the sleep_number of the player is less than 9:
		say "[book_phrase]";
		increase the sleep_number of the player by 1;
	otherwise:
		if the hallway is unvisited:
			say "The next page says: [quotation mark]YOU HAVE FINISHED...[line break][line break]The book drops from your hand as you fall asleep mid-sentence, sinking into warm darkness. Time passes, and you awake lying face-down on the carpet in an unfamiliar hallway. There is something strange about this place, but you can't quite explain it. You also sense that something important has changed. You feel a vague but persistent tension growing in the back of your mind. You slowly stand, and after a brief dizzy spell, regain your footing.[line break][line break]";
		otherwise:
			say "The book drops from your hand as you fall asleep mid-sentence, sinking into warm darkness. Time passes, and you once again awake in the middle of the now-familiar hallway.";
		now the sleep_number of the player is 0;
		now the book_trance is off;
		now the player is in the Hallway;
	

