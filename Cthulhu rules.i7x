Cthulhu Rules by Z4RD0Z  begins here.

Include Basic Screen Effects by Emily Short.

Include Hidden Items by Krister Fundin.

 
Section 1- Hit  Mental and Magic Points

A person has a number called maximum hit points. A person has a number called current hit points.

A person has a number called maximum mental points. A person has a number called current mental points.

A person has a number called maximum magic points. A person has a number called current magic points.

Definition : a person is dead if his current hit points are less than 0.


Section 2- Weapons and Combat spots


The cadavere is a thing. Description is " il corpo senza vita del [the noun] .". 

A  weapon is a kind of thing. A  weapon has a number called damage dice. The damage dice of a weapon  usually is 4.

A  knife is a kind of weapon.


Understand the commands "attack" as something new.

Attacking it with is an action applying to one visible thing and one carried thing . Understand "Attacca  [someone] con [something preferably held]" as attacking it with.


The attacking it with action has a number called the damage inflicted.


A person has a number called knife percentual. The knife percentual usually is 25.


Setting action variables for attacking something with something:
	if the second noun is a knife:
		let X be a random number between 1 and 100;
		if X is greater than the knife percentual  of the actor:
			let the maximum damage be the damage dice of the second noun;
			now the damage inflicted is a random number between 1  and the maximum damage;
	    
			

Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule):
	if the second noun is not a weapon:
		if the actor is the player, say "[The second noun] non è utilizzabile come arma .";
		stop the action.

Check an actor attacking something with something (this is the can't attack a non-person rule):
	if the noun is not a person:
		if the actor is the player, say "Non ha senso attaccare [The noun]";
		stop the action.

Carry out an actor attacking something with something (this is the standard attacking it with a weapon rule): 
	decrease the current hit points of the noun by the damage inflicted; 
	if someone  is dead: 
		remove the noun from play;
		now  cadavere  is in the location.


Report attacking a dead person with something (this is the death-report priority rule):
	say "Attacchi con  [the second noun], [one of]il sangue schizza ovunque![or] [the noun] si accascia gridando dal dolore[at random]. " instead.

Report attacking someone with something (this is the normal attacking report rule):
	say "Attacchi [the noun] con [the second noun], causando [damage inflicted] danni!" instead.

Report someone attacking the player with something when the player is dead (this is the player's-death priority rule):
	say "[The actor] ti attacca, descrizione morte";
	end the story;
	stop the action

Report someone attacking the player with something (this is the standard report someone attacking the player with rule):
	say "[The actor] ti attacca con  [the second noun], infliggendoti [damage inflicted] punti danno!" instead.

Report someone attacking something with something (this is the standard report attacking it with rule):
	say "[The actor] attacchi [the noun] con [the second noun], infliggendo [damage inflicted] punti danno!" instead.




Section 3- General skills

A person has a number called climb . The climb  is usually 40.

A person has a number called spotten hidden. The spotten hidden  is usually 25.
 
A person has a number called fast talk. The fast talk is usually 5.

A person has a number called occultism. The occultism is usually 5.

Section 3.1- Player skills and inventory

The maximum hit points of the player is 20. The current hit points of the player is 20.

The maximum mental points of the player is 15. The current mental points of the player is 15.

The maximum magic points of the player is 10. The current magic points of the player is 10.

The occultism of the player is 35.

Every turn:
	if current mental points of the player is less than 5:
		let X be a random number between 1 and 100;
		if X is greater than  5:
			say "qualcosa di mostruoso."	

Every turn:
	if player is in a dark room:
		let X be a random number between 1 and 100;
		if X is greater than current mental points of the player:
			say "dsdfsrdfd.";
			decrease current mental points of the player by 1.



The player wears a cinturone.

The coltello is a knife inside cinturone.


Section 4- Pre start


When play begins:
	now the  left hand status line is "HP: [current hit points of the player]";
	now the right hand status line is "S. Mentale: [current  mental points of the player]".


Section 4.1 - Pg Info

Schedapg is an action applying to nothing. Understand "info pg" as schedapg.

Check schedapg:
    say "Hp:[maximum hit points of the player] / [current hit points of the player]. 
    Sanity points: [maximum Mental points of the player] / [current mental points of the player].
    Skills: Occult [the occultism of the player]%; Climb [the climb of the player]%; Fast talk [the
    fast talk of the player]%; Spotten  hidden [the spotten  hidden of the player]%.
    Combat skills:knife [knife percentual of the player].".
    

Section 4.2- Things Rules

 A thing can be near or distant. A thing usually is near.

 Instead of doing anything other than examining to a distant thing:
 	say "[the noun] [if the noun is plural-named]sono  troppo distanti[otherwise]e['] troppo
	distante[end if].".


The darkthing is a kind of thing. A darkthing can be aknow or unknow. A darkthing usually is unknow

Instead of examining the   unknow  darkthing:
	let X be a random number between 1 and 100;
	if X is greater than the occultism of the player:
		say "[initial appearance of the noun]";
		say "Check failed ([X]% on Occultismo:[the occultism  of the player]%) .";
		stop the action;
	otherwise:
		say "Check Done ([X]% on Occultismo: [the occultism of the player]%) .";
	    	now the noun is aknow;
		continue the action.
		
Instead of searching :
	let X be a random number between 1 and 100;
	if X is greater than the spotten hidden of the player:
		say "Non trovi nulla di interessante";
	otherwise:
		continue the action.

Section 4.3 - Climb

Instead of climbing something:
	let X be a random number between 1 and 100;
	if X is greater than the climb of the player:
		say " Non riesci a scavalcare [the noun].";
	otherwise:
		continue the action.


Cthulhu Rules ends here.



