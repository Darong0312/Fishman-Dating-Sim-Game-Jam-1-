INCLUDE BlobFish_Scene
INCLUDE SwordFish_Scene
INCLUDE JellyFish_Scene
INCLUDE Octopus_Scene
INCLUDE AnimateMan_Scene
INCLUDE Date_Selection

#theme: dark


VAR date_times = 0
VAR first_choice = false
VAR Scene = 0
VAR scene_visited = 0
VAR choose_none = false

VAR jelly_aff = 0
VAR blod_aff = 0
VAR sword_aff = 0
VAR octo_aff = 0

LIST possible_choices = JellyFish, Octopus, SwordFish, BlobFish, AnimateMan

LIST scene_tracker = BlodScene, SwordScene, OctopusScene, JellyScene

Anime Man testing # CLASS: AnimeMan
Jellyfish Testing # CLASS: JellyFish


-> intro
=== intro ===
- <i> The sun shines brightly through the surface of the water above, casting light on the now shimmering scales of those swimming about the lake. The seaweed dances about through the water, swaying back and forth and gently caressing those that swim past them. As you get closer, you reach out your hands towards the seaweed and glide your hand across the smooth surface. Just then a voice calls out your name: 
- "I've been waiting for your arrival Gill."
- <i> You look off to where the voice called out to you and you see, treading water is the tall form of Cedrift Dogfishory, face shimmering from the sunlight falling through the water and inbetween the dancing seaweed. You swim over to him, albeit hesitantly, and pass by half-orca, half-lobsters doing the harlem shake on the sandy lake floor. They seem to be back up dancers for Lady GobyGoby, who seems to be giving a show to a crowd of rainbow shrimp. What is happening? As your eyes linger on the weird scene unflolding in front of you, you bump into something, and "gracefully" right yourself and mumble sorry to Cedrift. 
- <b> "Finally, my meal has arrived."
- <i> Suddenly, Cedrift's face enlongates and shapes itself into the face and neck of a pale eel with blood red eyes and lunges for you with mouth agape, with the intention to swallow you whole. Cedrift's sudden transformation gives you no time to react as he envelopes your body and sends you to the pit of his stomach.
- <i> Cedrift reverts back to his normal self, wiping saliva from his lips, and gives a light shrug as he joins the Lady GobyGoby concert and makes a horrible attempt at the Harlem Shake...

* [i'm sorry, what?] <i> You jolt awake in your bed and the book that was lying on your face clatters to the floor besides you, alarm clock blaring in your ear.

-> apartment

=== apartment ===
- alarm clock blaring in your ear.

- <i> Rubbing your eyes awake, you stumble out of bed and towards your closet to put a shirt on. Flinging open the doors you scan the cluttered mess that is your closet and pick the best shirt for the day:

* [A light blue tee shirt that has pictures of koi fish and lily pads.] <i>Ah yes the perfect shirt to wear when you really want to push the fact that you are a fish person. Even though koi fish and goldfish are different. Fuck, maybe this isn't the perfect shirt to be wearing. Oh well, you put on the blue tee shirt -> awake
* [A comfy pink jacket with the words "I got out of bed to be here" on the front.] <i>A comfy jacket for a comfy day indoors. Although the words are lost on the non-existant audience in your apartment. If only your life was a game to be perceived 24/7. Well maybe not ALL the time. You put on the pink jacket -> awake
* [A plain white shirt that clearly shows the wrinkles from not being hung up.] <i>You're gonna laze about in your apartment anyway, why wear a nice shirt? You put on the white shirt -> awake

= awake
- and move towards the door before glancing over at the book on the ground.

- <i> Wait a second. The book, that was on your face, when you woke up... You don't remember reading anything before going to bed last night! You walk over and pick the book up, turning it's face over to reveal it's title: Herring Otter and the Half-Otter Merprince.

- <i> Jasmine. Her apartment is leaking into your apartment. 

- <i> Welp. That probably means the others have also been leaking through. 

- <i> *sigh*

- <i> Tucking the book under your arm, you open the door of your bedroom, fully expecting to see your apartment in disarray. You're only half disappointed. 

- <i> The rest of the small, one person apartment looks mostly the same as you last left it. The natural clutter of cooking in the kitchen, the pillows and blankets thrown about the couch, and the table which is fully covered in dishes and your computer. Except now there is a bunch of clutter that doesn't even belong to you.

- <i> On the table lies a black game controller with anime stickers all over it, over by the kitchen, a long, thin fencing sword lies haphazardly on the ground, and an assortment of knitted clothes remain strewn across the whole of the couch and the floor. Honestly, the clothes make up for like most of the clutter, the other two things are really small. 

- <i> And that makes up the other three members of this room? Apartment? You have no clue. Everything became just slightly more confusing ever since you moved into Apartment 59862. Just when you thought work was getting difficult, your landlord decided to drop the concept of jumping and leaking on you. They explained that basically there were others living in apartments in other universes 

->scene_track

=== scene_track ===
// {first_choice}

{ 
-first_choice == false:
    ~first_choice = true
    ->player_choice_first
    
-first_choice == true:
    ->random_scene
}


=== player_choice_first ===
Choose your first date

*[Blodfish] -> meet_blobfish
*[Jellyfish] ->meet_jellyfish
*[Swordfish] ->meet_swordfish
*[Octopus]   ->meet_octopus

=== random_scene ===

~ Scene = RANDOM(1, 4)


{
- scene_tracker !? BlodScene && Scene <= 1:     -> meet_blobfish 
- scene_tracker !? SwordScene && Scene <= 2:    -> meet_swordfish
- scene_tracker !? JellyScene && Scene <= 3:    -> meet_jellyfish
- scene_tracker !? OctopusScene && Scene <= 4:  -> meet_octopus
}

{ scene_visited == 4:
    ->choice_check
- else:
    ->random_scene
}



=== conclusion ===

->END



