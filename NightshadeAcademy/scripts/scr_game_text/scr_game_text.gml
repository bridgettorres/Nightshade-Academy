//@param text_id
function scr_game_text(_text_id){
    switch(_text_id){
		//----------------DORM-------------------//
        case "letter":
            scr_text("Hi Sweetie, \n\n" + "I know staying away from home can be scary, but you can do this! Just because you got in through the raffle does not make you any less worthy than the selected kids. You have so much unrealized potential, you're smart just like your father... \n\n" + "Press Space to Continue");
            scr_text("...hopefully that's the only way you're like him. I know I won't be hearing from you for a while because of the school's policies, remember, dear, boarding school is for those who can't quite manage at home. Just kidding! Have a fantastic time my little genius. Don't forget to write back when you can. Good Luck! I am so excited for you. \n\n" + "Love, Mom");
        break;
		//----------------HomeRoom -------------------//
		//each student
		case "bri":
			scr_text("What were we talking about?");
		break;
		
		case "cam":
			scr_text("...");
		break;
		
		case "tania":
			scr_text("I like trains.");
		break;
		
		case "willow":
			scr_text("Hi! I Like Shorts! They’re Comfy And Easy To Wear!");
		break;
		
		case "mya":
			scr_text("Why are we here ? I hate school.");
		break;
		
		case "viki":
			scr_text("Why are we here ? I hate school.");
		break;
		//home room
		case "hmr_teacher":
			scr_text("Homeroom Teacher: Good morning students, please sit down and listen to the announcements!");
			scr_text("Bri: I hate the announcements, they suck!");
			scr_text("Teacher's pet: Be quiet, so others can hear! HEY RAFFLE KID GO TO YOUR SEAT");
		break;
		//class announcement and icebreaker announcement
		case "class_announcement":
			scr_text("Principal Announcement: Good morning and welcome, students of Nightshade Academy! \n" + "We have a few announcements before you start your day. \n\n" + "Press Space to Continue");
			scr_text("Principal Announcement: The volleyball team is looking for more players so make sure to tell the PE teacher if you’re interested. \n" + "The art club is creating a new mural on the south side entrance \n" + "For lunch, we will be having crispy, chicken sandwiches, fresh fruit, and our famous Nightshade super green salad with our house made dressing.");
			scr_text("Homeroom Teacher: Ok, I know everybody is new, so we’ll be doing icebreakers in the form of an intro quiz. Talk to those around you and gather your knowledge to answer some questions about the academy. Only come up to me when you’re Veeeeery sure that you know your stuff.");
		break;
		//ice breaker
		case "ice_1":
			scr_text("Ummm… All I know is that there are rumors that the headmistress has killed people before? Don’t say that out loud though, I don’t think they’d like it.");
		break;
		
		case "ice_2":
			scr_text("Do you know about the graduation rate here? It’s 20 percent. Nobody knows where the people that don’t graduate go. Probably part of all the NDAs and stuff on the legal documents.");
		break;
		
		case "ice_3":
			scr_text("I can’t believe they took my phone. They didn’t even let anyone know where the academy is located. Thanks to all the secrecy I can’t even send letters home.");
		break;
		
		case "ice_4":
			scr_text("The founder of nightshade academy... mmm I think it was ---insert name---");
		break;
		
		case "icebreaker_teacher":
			scr_text("Homeroom Teacher: Alright, student lets start the questioning");
			scr_text("What is our schools graduation rate?")
				scr_option("20 percent", "npc 1 - 20");
				scr_option("40 percent", "npc 1 - 40");
		break;
			case "npc 1 - 20":
				scr_text("Good next question, what is our phone policy?");
					scr_option("no phones allowed", "npc 1 - nophone");
					scr_option("we can use our phones", "npc 1 - yesphone");
			break;
			
			case "npc 1 - 40":
				scr_text("You clearly weren't listening... next question, what is our phone policy?");
					scr_option("no phones allowed", "npc 1 - nophone");
					scr_option("we can use our phones", "npc 1 - yesphone");
			break;
				case "npc 1 - nophone":
					scr_text("CORRECT");
				break;
				
				case "npc 1 - yesphone":
					scr_text("IDIOT");
				break;
				
			
		//----------------Chem-------------------//
		//chem
		//math

        //example
        case "example":
            scr_text("Good morning students, please sit down and listen to the announcements");
                scr_option("yeah", "npc 1 - yes")
                scr_option("yeah", "npc 1 - no")
        break;
            case "npc 1 - no":
                scr_text("MANNNN SCREW YOU");
            break;
            case "npc 1 - yes":
                scr_text("COOL");
			break;

}
}