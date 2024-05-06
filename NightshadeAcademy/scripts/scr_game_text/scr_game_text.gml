//@param text_id
function scr_game_text(_text_id){
    switch(_text_id){
		//----------------DORM-------------------//
		case "alarm":
			scr_text("I should really go and wake up my roommate, but let me not forget to get dressed!");
        break;
		
        case "letter":
            scr_text("Hi Sweetie, \n\n" + "I know staying away from home can be scary, but you can do this! Just because you got in through the raffle does not make you any less worthy than the selected kids. You have so much unrealized potential, you're smart just like your father... \n\n" + "Press Space to Continue");
            scr_text("...hopefully that's the only way you're like him. I know I won't be hearing from you for a while because of the school's policies, remember, dear, boarding school is for those who can't quite manage at home. Just kidding! Have a fantastic time my little genius. Don't forget to write back when you can. Good Luck! I am so excited for you. \n\n" + "Love, Mom");
        break;
		//----------------HomeRoom -------------------//
		//each student
		case "bri":
			scr_text("Bri: What were we talking about?");
		break;
		
		case "cam":
			scr_text("Cam: That salad is so gross and makes me sick to my stomach.");
		break;
		
		case "tania":
			scr_text("Tania: I like trains.");
		break;
		
		case "willow":
			scr_text("Willow: Hi! I Like Shorts! They’re Comfy And Easy To Wear!");
		break;
		
		case "mya":
			scr_text("Mya: Why are we here ? I hate school.");
		break;
		
		case "viki":
			scr_text("Viki: I don't knowww ");
		break;
		
		case "pet":
			scr_text("Teachers Pet: Be quiet, so others can hear !");
		break;
			
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
			scr_text("Tania: Ummm… All I know is that there are rumors that the headmistress has killed people before? Don’t say that out loud though, I don’t think they’d like it.");
		break;
		
		case "ice_2":
			scr_text("Mya: Do you know about the graduation rate here? It’s 20 percent. Nobody knows where the people that don’t graduate go. Probably part of all the NDAs and stuff on the legal documents.");
		break;
		
		case "ice_3":
			scr_text("Bri: I can’t believe they took my phone. They didn’t even let anyone know where the academy is located. Thanks to all the secrecy I can’t even send letters home.");
		break;
		
		case "ice_4":
			scr_text("Viki: The founder of Nightshade Academy... Was it Anne Justice? No, I must be misremembering - it was Madame Guillard!");
		break;
		
		case "ice_5": 
			scr_text("Cam: Ummm... All I know is that there are rumors that the headmistress was involded with the mob?");
		break;
		
		case "ice_6":
			scr_text("Teachers Pet: Why would I help you?");
		break;
		
		case "ice_7":
			scr_text("Willow: Remember, it's not just a suggestion; it's school policy. Class starts at 7:00 AM on the dot. Don't risk being tardy");
		break;
		
		case "icebreaker_teacher":
			scr_text("Homeroom Teacher: Alright, student lets start the questioning");
			scr_text("Homeroom Teacher: What is our schools graduation rate?")
				scr_option("20 percent", "mc1 - 20");
				scr_option("40 percent", "mc1 - 40");
		break;
			case "mc1 - 20":
				scr_text("Homeroom Teacher: Good next question, what is our phone policy?");
					scr_option("no phones allowed", "mc1 - nophone");
					scr_option("we can use our phones", "mc1 - yesphone");
			break;
			
			case "mc1 - 40":
				scr_text("Homeroom Teacher: You clearly weren't listening... next question, what is our phone policy?");
					scr_option("no phones allowed", "mc1 - nophone");
					scr_option("we can use our phones", "mc1 - yesphone");
			break;
				case "mc1 - nophone":
					scr_text("Homeroom Teacher: Very Good! Next Question, What is the Headmistress's name?");
						scr_option("Moira Rougue", "mc1 - wronghead");
						scr_option("Madame Guillard", "mc1 - correcthead");
					
				break;
				
				case "mc1 - yesphone":
					scr_text("Homeroom Teacher: We don't tolerate those who don't follow the rules at this school. Now, let's refocus. Can anyone tell me the name of our headmistress?");
						scr_option("Moira Rougue", "mc1 - wronghead");
						scr_option("Madame Guillard", "mc1 - correcthead");
				break;
				
					case "mc1 - correcthead":
						scr_text("Homeroom Teacher: CORRECT! Finally, did you catch anything interesting in the announcement or during the icebreaker?");
							scr_option("yes! It really brought to my attention the fact that the art club is painting a mural", "mc1 - correctans");
							scr_option("yes! I'm really interested in joining the volleyball team", "mc1 - correctans");
					break;
					
					case "mc1 - wronghead":
						scr_text("Homeroom Teacher: Idiot! We don't have time for distractions. Make sure you're paying attention. Now, tell me what grabbed your interest during the icebreaker or the announcements.");
							scr_option("I found it interesting that the headmistress was involded with the mob", "mc1 - incorrectans");
							scr_option("Um, yeah... I kinda wanna join the volleyball team after hearing the announcements.", "mc1 - correctans");
					
					break;
					
						case "mc1 - correctans":
							scr_text("Homeroom Teacher: It seems you might be worthy of being part of Nightshade Academy, take this hall pass so you can explore and get familiar with the school.");
							room_goto(homeroom_win);
							audio_stop_sound(snd_badending)
							audio_play_sound(snd_achievement, 1, false);
						break;
					
						case "mc1 - incorrectans":
							scr_text("Homeroom Teacher: Since you couldn't answer correctly, you'll face disciplinary actions. Get out of my class!");
							instance_destroy(obj_mc)
							room_goto(homeroom_loss);
							audio_stop_sound(snd_badending)
							audio_play_sound(snd_loss, 1, true);
						break;
				
			
		//----------------Chem-------------------//
        case "cam_chem":
            scr_text("Cam: I wanna blow something up today.");
        break;
        
        case "tania_chem":
            scr_text("Tania: Agreed. Let’s look up some research articles online.");
        break;
        
        case "willow_chem":
            scr_text("Willow: Good idea. We can divide the work and meet up later to discuss.");
        break;
        
        case "teacher_chem":
            scr_text("Chem Teacher: Students please head towards your stations so we can start.");
        break;
        //chem questioning dialogue
        case "teacher_chem_intruc":
            scr_text("Chem Teacher: Alright, everyone, gather around. Today, we're delving into some serious chemistry. We're talking about something that could potentially save lives one day. We'll be concocting an antidote for an incredibly deadly poison gas. But listen up, folks, this isn't child's play. One wrong move in our combinations could leave us sick or worse, with burning eyes.");
            scr_text("Which one should I use?");
            scr_text("Chem Teacher: To make the proper antidote is difficult as you need to use the poison itself. The poison color is a primary color, when mixed with another primary color, the antidote turns green. Which vial do you choose?");
                scr_option("Yellow + red = orange", "mc_chem - wrong");
                scr_option("Yellow + blue = green", "mc_chem - correc");
        break;
            case "mc_chem - wrong":
                scr_text("Chem Teacher: It's clear you need to pay attention some more, class dismissed!");
                scr_option("(Head on over to Math)", "mc_chem - math");
            break;
            
            case "mc_chem - correc":
                scr_text("Chem Teacher: I'm truly impressed by your response, so much so that I'm delighted to dismiss you all early from my classroom.");
                scr_option("(Head on over to lunch)", "mc_chem - lunch");

            break;
                case "mc_chem - math":
                    room_goto(hallway_math);
                break;
                    
                case "mc_chem - lunch":
                    room_goto(hallway_lunch);
                break;
		//----------------Math-------------------//
		case "cam_math":
            scr_text("Cam: You should join the mathletes. It can be fun.");
        break;
		
		case "senior_math":
			scr_text("Senior: You're taking this math class?");
		break;
		
		case "viki_math":
			scr_text("Viki: I like math!");
		break;
		
		case "tania_math":
			scr_text("Tania: I hate math!");
		break;
		
		case "teacher_math":
			scr_text("Math Teacher: I need everyone to find their seats!");
		break;
		
		case "student_math":
			scr_text("?: Head over to the english classroom whenever you get the chance, maybe after the questioning");
		break;
		//math questioning
		case "math_questioning":
			scr_text("Math Teacher: You! In the yellow hoodie, what is: 4+7-2+3+9-10?");
			scr_text("Cam: 11")
			scr_text("Math Teacher: Good! Raffle kid,  Now, what is: 2x6(2+1)+12/12");
				scr_option("32", "mc_incorrect - math");
				scr_option("37", "mc_correct - math");
		break;
		
			case "mc_incorrect - math":
				scr_text("Math Teacher: Heh, yeah I suppose I shouldn’t expect you to get that right.");
					scr_option("I HAVE TO GO USE TO THE BATHROOOM", "mc_next - englishmath");
			break;
			
			case "mc_correct - math":
				scr_text("Math Teacher: Huh? Maybe all the raffle kids aren’t useless. Try this: (3^3/9+4*3+3)/8");
					scr_option("I HAVE TO GO USE TO THE BATHROOOM", "mc_next - englishmath");
            break;
			
				case "mc_next - englishmath":
                    room_goto(hallway_mathEnglish);
                break;
				
		//----------------Lunch-------------------//
		case "lunch_lady":
            scr_text("Lunch Lady: You already grabbed food, do you not remember? Now, go away.");
        break;
		
		case "tania_lunch":
			scr_text("Tania: why does the rice taste funny?");
		break;
		
		case "cam_lunch":
			scr_text("Cam: I feel sick...");
		break;
		
		case "willow_lunch":
			scr_text("Willow: I love drinking Bone-Hurting Juice! Use code OUCHMYBONES for 15% on at checkout.");
		break;
		
		case "bri_lunch":
			scr_text("Bri: ZZZZZZ");
		break;
		
		case "student_lunch":
			scr_text("Student: I like food! It's comfy and easy to eat.");
		break;
		
		case "senior_lunch":
			scr_text("Senior: ...");
		break;
		
		case "mya_lunch":
			scr_text("Mya: ...");
		break;
		
		case "viki_lunch":
			scr_text("Viki: Why did you leave your food infront of me?");
		break;
		
		case "pet_lunch":
			scr_text("Teachers Pet: I gotta finish up my food quickly so I can go back to studying!");
		break;
		//ending
		case "food":
			scr_text("*stomach grumbles* I'm guessing this food here is mine...");
				scr_option("*eat it*", "mc - eats");
				scr_option("maybe I shouldn't since I've been hearing that students have been getting sick lately", "mc - throws");
		break;
					
			case "mc - eats":
				instance_destroy(obj_mc)
				room_goto(lunchroom_loss);
				audio_stop_sound(snd_badending);
				audio_play_sound(snd_loss, 1, true);
			break;
					
			case "mc - throws":
				scr_text("I'll just go hand it to the janitor to throw it out.");
			break;
		
		//janitor interaction
		case "janitor":
			scr_text("Hello sir, hands tray finished lunch");
			scr_text("Janitor: I've been watching you. You're not like the other kids. You're genuine and not easily brainwashed");
            scr_text("Janitor: There's something you need to do. Head to the English classroom. Room 04. Tell no one. This is between us, understand?");
				scr_option("sure...", "mc_next - lunchenglish");
        break;
			case "mc_next - lunchenglish":
				room_goto(hallway_lunchEnglish);
            break;
		//----------------English class-------------------//				
        case "file":
			scr_text("what's with that folder over there? It says Confidential on it. Should I open it? What could be inside? Maybe it's nothing important, but what if it's something serious? I don't want to get in trouble. But then again, they seemed trustworthy. What should I do?");
            scr_option("(Open the folder)", "open");
			scr_option("(Leave it alone)", "leave");
        break;
		
        case "open":
			instance_destroy(obj_mc)
			room_goto(english_win);
			audio_stop_sound(snd_badending)
			audio_play_sound(snd_achievement, 1, false);

		break;
                    
        case "leave":
			instance_destroy(obj_mc)
            room_goto(english_loss);
			audio_stop_sound(snd_badending);
			audio_play_sound(snd_loss, 1, true);
        break;
		

}
}