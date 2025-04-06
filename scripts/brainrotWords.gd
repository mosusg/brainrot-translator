extends Node

var globalQuizDif = 1

var words = {
	"Aura" : {
		"DEFINITION" : "A vibe or energy felt from someone",
		"SYNONYM" : "Personality",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 8,
		"Example" : "Lebron's AURA is wild"
	},
	"Rizz" : {
		"DEFINITION" : "A feature of one's charm or attraction",
		"SYNONYM" : "Charisma",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 10, # Scale of 1-10 of how relevant the word is
		"Example" : "The teacher at my school has W Rizz!"
	},
	"You know what else is massive?" : {
		"DEFINITION" : "A comedic joke that refers to the low taper fade. This joke was started by Ninja dragging the low taper fade meme",
		"SYNONYM" : "N/A",
		"PART_OF_SPEECH" : "Sentence",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "You know what else is massive? The lowwwww taper fade"
	},
	"Cap" : {
		"DEFINITION" : "Something consisting of deception or lack of truth.",
		"SYNONYM" : "False",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 4, # Scale of 1-10 of how relevant the word is
		"Example" : "No cap, I just saw that kid enter that van!"
	},
	"D1" : {
		"DEFINITION" : "Reference to Division 1 in sports, when used in brainrot context its to define superiority or skill in that field of knowledge.",
		"SYNONYM" : "Superior",
		"PART_OF_SPEECH" : "Part of speech here",
		"RELEVANCE" : 5, # Scale of 1-10 of how relevant the word is
		"Example" : "We have a D1 glazer at hand."
	},
	"Hawk Tuah" : {
		"DEFINITION" : "Onomatopoeia for spitting",
		"SYNONYM" : "Spit",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "Hawk Tuah on that thing!"
	},
	"Talk Tuah" : {
		"DEFINITION" : "Deriving from the term Hawk Tuah. It references the podcast of the same name, referencing one that talks.",
		"SYNONYM" : "Podcast",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "Have you listened to the new episode of Talk Tuah?"
	},
	"GOAT" : {
		"DEFINITION" : "Acronym for 'Greatest of All Time'. Its meant in a positive aspect to highlight ones abilities",
		"SYNONYM" : "Greatest",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 5, # Scale of 1-10 of how relevant the word is
		"Example" : "Thats why he's the GOAT! !The GOAT"
	}, 
	"Glizzy" : {
		"DEFINITION" : "A hot dog.",
		"SYNONYM" : "Sausage",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 3, # Scale of 1-10 of how relevant the word is
		"Example" : "'It's a bad day to be a glizzy,' his shirt read."
	},
	"Glaze" : {
		"DEFINITION" : "To hype or praise someone/thing so much it becomes excessive or annoying",
		"SYNONYM" : "Obsess",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "I can't stop glazing Lebron James"
	},
	"Mid" : {
		"DEFINITION" : "Average or not special. Sometimes used to applied in a negative or insulting effect.",
		"SYNONYM" : "Mediocre",
		"PART_OF_SPEECH" : "adjective",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "This food is super mid."
	},
	"Mew" : {
		"DEFINITION" : "The pseudoscientific method to restructure one's jawline by pressing their tongue to their mouth.",
		"SYNONYM" : "Jawline Training",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "In order to become an Alpha Male, my friend began mewing 240 hours a week."
	},
	"Mog" : {
		"DEFINITION" : "To be significantly more attractive than someone or something displaying the other's inferiority.",
		"SYNONYM" : "Dominate",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "Did you just get mogged by the skibidi rizzler!?"
	},
	"Pookie" : {
		"DEFINITION" : "A nickname given to a friend or lover to denote a close bond.",
		"SYNONYM" : "Pet name",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "Bro stop calling me your pookie!"
	},
	"Roman Empire" : {
		"DEFINITION" : "A metaphor for random event or person that intrigues one to the point where that one frequently thinks about it",
		"SYNONYM" : "Reminisce",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 2, # Scale of 1-10 of how relevant the word is
		"Example" : "I think my 'Roman Empire' is Alexander the Great saying, 'I see, I came, I conquered'!"
	},
	"Sigma" : {
		"DEFINITION" : "Commonly used in its whole as 'Sigma Male'. It references a individual who is self-reliant and successful.",
		"SYNONYM" : "Successful",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "The Sigma Male mogged the family of four."
	},
	"Simping" : {
		"DEFINITION" : "Displaying an overt expression of affection that is typically not reciprocated.",
		"SYNONYM" : "Glaze",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 5, # Scale of 1-10 of how relevant the word is
		"Example" : "The streamer's chat was full of simps."
	},
	"Sus" : {
		"DEFINITION" : " The shortening of the word suspicious. Being popularized in 2020 from the hit game Among Us ",
		"SYNONYM" : "Conspicious",
		"PART_OF_SPEECH" : "Adjective",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "Officer, how was my client sus?"
	},
	"Sussy Baka" : {
		"DEFINITION" : "A combination of the word 'sus' and the word 'baka', the Japanese word for fool. Used to describe someone's suspicious foolishness.",
		"SYNONYM" : "Imposter",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 5, # Scale of 1-10 of how relevant the word is
		"Example" : "You are a sussy baka."
	},
	"Skill Issue" : {
		"DEFINITION" : "Referring to an issue of skill, or lack thereof in a given task.",
		"SYNONYM" : "Deficiency",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "An inability to Hackathon would be a serious skill issue."
	},
	"Touch Grass" : {
		"DEFINITION" : "A roundabout way to tell someone to go outside, usually as an insult for being online too long.",
		"SYNONYM" : "Get a life",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "You need to touch grass, dude!"
	},
	"Yap" : {
		"DEFINITION" : "To talk too much without any particular meaning or reason",
		"SYNONYM" : "Talking",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 9, # Scale of 1-10 of how relevant the word is
		"Example" : "Our teacher yapped after turning off our monitors."
	},
	"Fanum Tax" : {
		"DEFINITION" : "Referencing the streamer Fanum. The act of taking a portion of a friend's food as a 'tax'.",
		"SYNONYM" : "Taxation",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "My friend Fanum Taxed my chips!"
	},
	"Skibidi" : {
		"DEFINITION" : "Referencing to the internet series Skibidi Toilet. Usually used to denote excitement, joy, or absurd actions without any meaning",
		"SYNONYM" : "None",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "School was so Skibidi today!"
	},
	"NPC" : {
		"DEFINITION" : "Taken from the video game term, 'Non-Playable Character'. It refers to someone who is lackluster in creativity, imagination, and originality",
		"SYNONYM" : "Boring",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "Youre dad is such an NPC."
	},
	"Geek" : {
		"DEFINITION" : "The act of failing to focus or pay attention to the issue at hand",
		"SYNONYM" : "Unfocused",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "My friend was geeking out at the Hackathon"
	},
	"Good Boy" : {
		"DEFINITION" : "A nickname for obeying the command of another successfully, akin to a dog",
		"SYNONYM" : "Obedient",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "Can you hand me that? Good boy!"
	},
	"Low Taper Fade" : {
		"DEFINITION" : "Definition goes here",
		"SYNONYM" : "Synonym or similar word here",
		"PART_OF_SPEECH" : "Part of speech here",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "Imagine if Brian got a low taper fade!"
	},
	"Locked In" : {
		"DEFINITION" : "The act of preparing or being extremely focused and completing the task at hand successfully",
		"SYNONYM" : "Concentrate",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "The child never stood a chance when I locked in."
	},
	"Highkey" : {
		"DEFINITION" : "To describe something very openly and clearly, to emphasis its importance",
		"SYNONYM" : "Clarity",
		"PART_OF_SPEECH" : "Adverb",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "He was highkey geeked after turning off his monitor"
	},
	"Lowkey" : {
		"DEFINITION" : "To describe something as subtle or being understated to suggesst a less obvious message/meaning",
		"SYNONYM" : "Moderate",
		"PART_OF_SPEECH" : "Adverb",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "Lowkey he made a brainrot translator."
	},
	"Please Speed I need this" : {
		"DEFINITION" : "Referenced from famous Youtuber IShowSpeed. Its an exaggeration or desperation for wanting something",
		"SYNONYM" : "Begging",
		"PART_OF_SPEECH" : "None",
		"RELEVANCE" : 3, # Scale of 1-10 of how relevant the word is
		"Example" : "Please Speed I need this! My mom is kinda homeless :("
	},
	"I Understand it Now" : {
		"DEFINITION" : "A sudden realization or clarity for the task at hand which usually implies an eventual successful job done",
		"SYNONYM" : "Enlightenment",
		"PART_OF_SPEECH" : "Part of speech here",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "He understood it now after he turned in his math test."
	},
	"Shawty" : {
		"DEFINITION" : "An incredibly attractive woman",
		"SYNONYM" : "Baddie",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "Shawty went to the royal ball and got rizzed"
	},
	"Griddy" : {
		"DEFINITION" : "To griddy is to perform a dance move popularized by the game Fortnite",
		"SYNONYM" : "Bring it Around",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 3, # Scale of 1-10 of how relevant the word is
		"Example" : "After I 200 pumped him, I hit the griddy while he was knocked"
	},
	"Cooked" : {
		"DEFINITION" : "To either have been absolutely destroyed in something, or to have destroyed something",
		"SYNONYM" : "Fail or succeed",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 10, # Scale of 1-10 of how relevant the word is
		"Example" : "I heard that guy got absolutely cooked on the Coyne test"
	},
	"Ohio" : {
		"DEFINITION" : "A State in the U.S. however typically refers to something incredibly weird",
		"SYNONYM" : "Weird",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "That guy over there must be from Ohio"
	},
	"Let Him Cook" : {
		"DEFINITION" : "To allow someone to cook",
		"SYNONYM" : "Let it happen",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "See that guy with the low taper fade? Let him cook."
	},
	"What the Sigma" : {
		"DEFINITION" : "To express surprise or confusion ",
		"SYNONYM" : "Bomboclat",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "Dude, what the sigma"
	},
	"Bomboclat" : {
		"DEFINITION" : "An exclamatory response of disbelief",
		"SYNONYM" : "What the sigma",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 11, # Scale of 1-10 of how relevant the word is
		"Example" : "BOMBOCLAAAAAAAAAAAAAAAAAAAAAAAAAAT!"
	},
	"Lil Bro" : {
		"DEFINITION" : "A derogatory term for someone who is inferior",
		"SYNONYM" : "Midget",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 10, # Scale of 1-10 of how relevant the word is
		"Example" : "Keep trying lil bro, you’ll get there someday"
	},
	"Baby Gronk" : {
		"DEFINITION" : "The guy who rizzed up Livvy Dunne",
		"SYNONYM" : "N/A",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 2, # Scale of 1-10 of how relevant the word is
		"Example" : "Did you hear that Baby Gronk rizzed up Livvy Dunne in Ohio?"
	},
	"5x30" : {
		"DEFINITION" : "An extremely intense and strenuous workout",
		"SYNONYM" : "N/A",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 3, # Scale of 1-10 of how relevant the word is
		"Example" : "Gurshan Singh loves watching people do the 5 x 30"
	},
	"Put the Fries in the Bag" : {
		"DEFINITION" : "A statement of how washed someone is",
		"SYNONYM" : "You’re done for little bro",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 10, # Scale of 1-10 of how relevant the word is
		"Example" : "'I used to work at Google!’ just put the fries in the bag little bro"
	},
	"Chat" : {
		"DEFINITION" : "Your audience at any given moment",
		"SYNONYM" : "Audience",
		"PART_OF_SPEECH" : "Fourth Person Pronoun",
		"RELEVANCE" : 9, # Scale of 1-10 of how relevant the word is
		"Example" : "Chat look, that infant got cooked by a semi-truck"
	},
	"6-7" : {
		"DEFINITION" : "Lakers in 5",
		"SYNONYM" : "Lakers in 5",
		"PART_OF_SPEECH" : "Lakers in 5",
		"RELEVANCE" : 5, # Scale of 1-10 of how relevant the word is
		"Example" : "6, 7, Lakers in 5"
	},
	"Aldi" : {
		"DEFINITION" : "A grocery store chain ",
		"SYNONYM" : "N/A",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 2, # Scale of 1-10 of how relevant the word is
		"Example" : "Kanye West used to shop at Aldi"
	},
	"Standing on Business" : {
		"DEFINITION" : "to act with confidence, seriousness, or authority, especially when it comes to handling business or personal matters.",
		"SYNONYM" : "Owning a situation",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 6, # Scale of 1-10 of how relevant the word is
		"Example" : "Did you see the way Von stood on business?"
	},
	"Opps" : {
		"DEFINITION" : "Shortened word for opponent",
		"SYNONYM" : "Opposition",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 8, # Scale of 1-10 of how relevant the word is
		"Example" : "Moses Garado is my opp"
	},
	"Flex" : {
		"DEFINITION" : "To show off something of perceived value",
		"SYNONYM" : "Show off",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 4, # Scale of 1-10 of how relevant the word is
		"Example" : "He flexed his tesla on his grandma’s grave"
	},
	"Deaduzz" : {
		"DEFINITION" : "To be serious about something",
		"SYNONYM" : "Sincere",
		"PART_OF_SPEECH" : "Adjective",
		"RELEVANCE" : 9, # Scale of 1-10 of how relevant the word is
		"Example" : "Dude, are we deaduzz"
	},
	"Bussin" : {
		"DEFINITION" : "For something to be good, usually referring to food",
		"SYNONYM" : "Tasty",
		"PART_OF_SPEECH" : "Adjective",
		"RELEVANCE" : 5, # Scale of 1-10 of how relevant the word is
		"Example" : "I’m not gonna lie, that lunch was bussin"
	},
	"Zonked" : {
		"DEFINITION" : "To be extremely tired and exhausted, typically due to use of drugs",
		"SYNONYM" : "Faded",
		"PART_OF_SPEECH" : "Adjective",
		"RELEVANCE" : 1, # Scale of 1-10 of how relevant the word is
		"Example" : "Dude I’m zonked as hell at the hackathon."
	},
	"On God" : {
		"DEFINITION" : "To put something on God",
		"SYNONYM" : "N/A",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 15, # Scale of 1-10 of how relevant the word is
		"Example" : "On God I did the homework"
	},
	"Womp Womp" : {
		"DEFINITION" : "A word used to comment on something bad or disappointing that has happened or is happening, usually in a humorous way ",
		"SYNONYM" : "Damn bruh",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 9, # Scale of 1-10 of how relevant the word is
		"Example" : "I don’t care if they nuked Japan, womp womp"
	},
	"Chad" : {
		"DEFINITION" : "An alpha. The pinnacle of humanity",
		"SYNONYM" : "GOAT",
		"PART_OF_SPEECH" : "Noun/Adjective",
		"RELEVANCE" : 7, # Scale of 1-10 of how relevant the word is
		"Example" : "Franklin Delano Roosevelt was lowkey a chad"
	},
	"Soyjack" : {
		"DEFINITION" : "A cartoon depicting someone as extremely weak, feeble, and inferior",
		"SYNONYM" : "Caricature",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 3, # Scale of 1-10 of how relevant the word is
		"Example" : "I have made a cartoon depicting me as the chad, and you as the soyjack"
	},
	"Pog" : {
		"DEFINITION" : "To express excitement at a positive thing",
		"SYNONYM" : "W!",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 2, # Scale of 1-10 of how relevant the word is
		"Example" : "He said pog after getting the world record"
	},
	"Bozo" : {
		"DEFINITION" : "An idiot or clownish individual",
		"SYNONYM" : "Mentally Lacking",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 3, # Scale of 1-10 of how relevant the word is
		"Example" : "Dude, you’re such a bozo"
	},
	"Blud" : {
		"DEFINITION" : "Short for 'blood' and is often used to refer to a friend, mate, or homie. It can also be used more casually or affectionately to address someone.",
		"SYNONYM" : "Pookie",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 9, # Scale of 1-10 of how relevant the word is
		"Example" : "Blud, are you coming to the hackathon"
	},
	"Unc" : {
		"DEFINITION" : "An individual older than the person saying it",
		"SYNONYM" : "Geezer",
		"PART_OF_SPEECH" : "Noun",
		"RELEVANCE" : 9, # Scale of 1-10 of how relevant the word is
		"Example" : "Unc’s review of Morning Glory was awful"
	},
	"Geeked" : {
		"DEFINITION" : "To not be locked, or to be overly excited about something of little importance",
		"SYNONYM" : "Ecstatic",
		"PART_OF_SPEECH" : "Verb",
		"RELEVANCE" : 9, # Scale of 1-10 of how relevant the word is
		"Example" : "Dude, I’m so geeked on this history test"
	}
}
