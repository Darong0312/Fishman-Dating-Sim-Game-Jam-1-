INCLUDE BlodFish_Scene
INCLUDE SwordFish_Scene
INCLUDE JellyFish_Scene
INCLUDE Octopus_Scene
INCLUDE AnimateMan_Scene



VAR date_times = 0

LIST possible_choices = JellyFish, Octopus, SwordFish, BlobFish, AnimateMan

->intro

=== intro ===
{
    - !meet_blodfish:
        ->meet_blodfish
    - !meet_swordfish:
        ->meet_swordfish
    - !meet_jellyfish:
        ->meet_jellyfish
    - !meet_octopus:
        ->meet_octopus
}
-> choice_check


=== choice_check ===
Make your choice

* {possible_choices ? JellyFish}   Choose Jellyfish as ending      -> jelly_end
* {possible_choices ? Octopus}     Choose Octopus as ending        -> octopus_end
* {possible_choices ? SwordFish}   Choose Swordfish as ending      -> sword_end
* {possible_choices ? BlobFish}    Choose Blodfish as ending       -> jelly_end
* {date_times == 0}                 Choose AnimateMan as ending     -> animate_man


=== conclusion ===

->END



