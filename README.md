# Crusader Kings 3 Unofficial patch

This repo contains the code for the mod Crusader Kings 3 Unofficial Patch (https://steamcommunity.com/sharedfiles/filedetails/?id=2871648329). 

![](mod/thumbnail.png)

The mod contents are inside the `mod` folder. 

There is a `master` branch containing the most up-to-date code from the mod and a `vanilla_1_8_1` branch with the vanilla files that are overwritten by the mod as of the 1.8.1 (Robe) release.

Having a separate branch with the vanilla files it makes it easier to do a three-way merge when a new version of the game is released.

> Please ensure you are using UNIX (LF) line endings to avoid having to deal with tons of annoying whitespace changes in git. 

## What to do when the game is updated

When Paradox releases a new version of Crusader Kings 3, the following steps should be taken:
1. Checkout the latest vanilla branch (`vanilla_1_8_1` as of this writing)
2. Run `python tools/copy_overwritten_files_from_vanilla_game.py`to overwrite all relevant files
3. Run `sh tools/crlf2lf.sh` to ensure all files have UNIX (LF) line endings
4. Create a new branch named `vanilla_<version>` (i.e `vanilla_1_9_0`) and commit/push the changes
5. Go back to master and merge from the latest vanilla branch


## Changelog

### Update: 9 Jan @ 9:07am
- Gyda is now norse culture (was norwegian that doesn't exist in 867)
- Sancha Baião is now galician (was portuguese that doesn't exist in 1066)

--
Internal:

Minor rework to the initialization code when you take the decentralized rule legacy

### Update: 8 Jan @ 6:04pm
- The "education invalidated" has now a workaround, you'll still see this tooltip if you are affected BUT you'll still get the desired outcome
- Rewrite again the children not returning after the peer's meeting.
- Fix child_personality.2003 trying to set the bully relation instead of removing it
- Fix bp1_yearly.9041 by making sure we do not have the bully relation before setting it
- Fix for the party baron (he should now have the friends he was looking for)
- Fix bp1_yearly.7058 by making sure we do not have the friend relation before setting it
- Fix court.4804 where the trigger and the body of the event did not select the same things
- Fix bp1_yearly.9031 by making sure the ghost has relatives
- Fix bp1_yearly.9022 that could fire for someone who is already our best-friend
- Fix for the set_favorite_treat_effect

-- Internal:

- Fix for mentor death title in the tooltip (used the desc for both title & desc)

### Update: 5 Jan @ 5:36pm
- Fix effect not being applied when you discover someone scheming against you (hostile_scheme_discovery.3003)
- Fix children not returning after a peer meeting
- Fix the guardian death notification being sent if the ward was a vassal (instead of a relative)
- Fix double scheme chance modifier to kill your spiritual HoF (one was at -25 and a copy was at -50, kept -50 to be in line with other hostile scheme)
- Fix event yearly.1080 options that shown trait that has nothing to do with the option being available
- Fix for your brother-in-law / sister-in-law not being recognize as such sometimes
- Ensure friend exists & is alive to be used as confider (for stress events)
- Harmonize the courtier selection for bp1_yearly.7003
- Ensure the char is landed for event bp1_yearly.9027

### Update: 2 Jan @ 10:29pm
Happy new year, biggest release so far, full changelog will come a little later but here are the big changes:

- All "spouses cheating" events have been reviewed, and the missing checks have been implemented

=> The player still have the choice to cheat their partners, but the AI must respect all the triggers

- The event "Two ships at night" should now prevent selecting your character
- The event "Splitting the Crown" now work correctly
- The event ""Aco es or, Xata!" has been reviewed, and now only allows you to improve farmlands if the selected location for the event is of this type
- Generic univerities now gives the holder the bonus
- Legacy "decentralized rule" (and other modifier working with friends) should now work correctly if you already have friends when you take them, should correctly gain/lose stacks depending on your friend number correctly.
- All the culture have been added to the localization (no more missing word in tooltip when a new culture is finished)
- The culture that allows you to build tradeport and guilds an era early are now working
- The option to demand the conversion of the Grand Master of the Holy Order is now correctly displayed as non-possible
- Best friend dying event is now always triggered
- The spouse concillor events have been reviewed, so your spouse won't target him/herself for events

- The traits Depressed, Possessed, Lunatic (in their genetic version) can now be inherited. They will be in the "inactive state" so won't be visible until later in-game BUT the issue for the generic version of those trait overriding the genetic one is still here, didn't want to push the release any longer :(

- Many animation / logic fixes

------
FULL Changelogs:

Your spouse concillor won't target him/her self for some events
Your spouse concillor won't target you if you are the HoF for an event
Fix bp1_yearly.9019 pilgrimage option if on CD (won't see it anymore)
Fix feast_default.6251 option that could lead to set lover with someone
Fix notification for court trait #1 if you have a court grandeur of 8
Fix courtiers not getting the court trait #2 if it was given in a single notification (as opposed to the mass notification)
Fix decentralized_rule_friends not working properly
Fix Beatrice di Canossa being a male (the siste of mathilda)
Fix lover.0003 if you have a 3rd lover
Fix peasant_affair.2001 where the peasant child scope could be not set
Fix building sometimes checking county holder culture instead of county culture
Fix missing triggers to cheating spouse/partners for bp1_yearly.9019
Fix bp1_yearly.9019 trying to set an already existing lover relation
Fix invite_foreign_ruler_to for AI to check if they have enough gold before inviting to feast
Fix hold_court.8130 trying to create a knight to a null scoped location
Fix hold_court.8130 option non being available if you have the trait torturer
Fix mother being duplicated if you have twins AND she is also your court physician
Fix missing portrait in case of triplets *, **
Fix the genetic version of the traits depressed, lunatic, possessed not being inheritable at all ***
Fix death music for birth.3012, birth.3021
Fix title for event birth.3012
Fix sibling.0004 triggering even if your sibling is not your vassal / at your court
Fix sibling.0004 that could fire for a sibling in dungeon/house arrest
Fix stewardship_duty_1055 not cheking if you have the celibate trait
Fix stress_trait_ongoing.1501 not cheking if you have the celibate trait
Fix missing triggers to cheating spouse/partners for:
- stress_trait_ongoing.1501
- trait_specific_ongoing.5003
- fund_inspiration.2120, 6300, 6504
- yearly.1001, 1010, 1060, 3031, 0003
- hold_court_8161
- vassal.3002, 3003
- intrigue_temptation.3000, 3011 , 3100, 3120, 3130, 3150, 3160
- pilgrimage.4002
Fix spymaster helping you to kill himself for event intrigue_scheme_ongoing.5005
Fix intrigue_scheme_ongoing.5006 wrong scoped gold gifter for gold given to you by event intrigue_scheme_ongoing.5005
Fix heresiarch trait being removed instantly to heresy creator
Fix icon for the stopped_being_friends memory
Fix court.4751 missing portraits
Added a notification if you are the liege of someone and their guardian dies
Fix bp1_yearly.5719 missing check for powerful_vassal before firing
Fix wrong relation check order (upgrade_, downgrade_) relations
Fix missing checks to the tribal authority for a liberty faction
Fix best friend event not firing in certain cases
Fix friend council perk not decreasing if your best friend dies
Fix decentralized rule not decreasing if your best friend dies
Fix confidants perk not decreasing if your best friend dies
Fix child non-returning to court after meeting peers ****
Fix GENERIC universities not giving the modifier to their holders
Fix all missing traditions for tooltip notification
Fix swapped loc between Bureacrats & family business
Fix effect to recruit terrain specialist that could select a non adult character
Fix fp2_yearly.8003 that could lead to a wrong trait being displayed in the notification
Fix fp2_yearly.2020 that was restricted to the county of valencia
Fix animation for death_management.1206
Fix where you could ask the conversion of a Holy Master
Fix wrong trait check in councillor_spouse_background.0001
Add a custom desc to the tooltip in sibling.8002
Fix bp1_yearly.5102 where at the end you reveal the lover secret instead of learning it
Add the icon of the legitimate bastard for bastard_interaction.0001
Fix the marriage events if you had an affair / children with the char you are marrying
Fix city_01 and city_02 wrong illustration if in India
Fix for sibling.0005.a tooltip
Fix double negative opinion when you legitimize a bastard
Fix event bp1_yearly.2010 (two ships at night) that could select yourself
Fix fund_inspiration.8014 option tooltip
Fix fp2_yearly.9001 intrigue duel being always 50/50
Fix tooltip & scope for title_event.0015
Fix city keepers & Maritime Mercantilism tradition where you could not build the guild / tradeport an era early

Added a divorce memory

Tweak sibling.0005 to increase by 1 the ammount of time your sibilng need to take bad action against your kingdom before firing

Internal fix missing scope for liege wanting palatinate


* Sadly, cannot add a 3rd namming box as it breaks the UI

** I've let the text saying there are only 2 children, would require to write a text for every language, and the trait would still be "twins" not "triplets", not worth the effort IMHO for now...

*** They will be in the "inactive state" so won't be visible until later in-game BUT the issue for the generic version of those trait overriding the genetic one is still here (instead of revealing the genetic version).

**** They are still at the meet peer's court if they have a guardian, need to find another way in this case :(
