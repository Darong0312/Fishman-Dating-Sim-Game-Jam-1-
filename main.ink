INCLUDE BlobFish_Scene
INCLUDE SwordFish_Scene
INCLUDE JellyFish_Scene
INCLUDE Octopus_Scene
INCLUDE AnimateMan_Scene
INCLUDE Date_Selection




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
- work in progress

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

=== choice_check ===
Make your choice

* {possible_choices ? JellyFish}   Choose Jellyfish as ending      -> jelly_end
* {possible_choices ? Octopus}     Choose Octopus as ending        -> octopus_end
* {possible_choices ? SwordFish}   Choose Swordfish as ending      -> sword_end
* {possible_choices ? BlobFish}    Choose Blobfish as ending       -> jelly_end
* Not dating: Choose AnimateMan as ending     
-> animate_man


=== conclusion ===

->END



