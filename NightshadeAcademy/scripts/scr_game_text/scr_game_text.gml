//@param text_id
function scr_game_text(_text_id){
    switch(_text_id){
        case "letter":
            scr_text("Hi Sweetie, \n\n" + "I know staying away from home can be scary, but you can do this! Just because you got in through the raffle does not make you any less worthy than the selected kids. You have so much unrealized potential, you're smart just like your father... \n\n" + "Press Space to Continue");
            scr_text("...hopefully that's the only way you're like him. I know I won't be hearing from you for a while because of the school's policies, remember, dear, boarding school is for those who can't quite manage at home. Just kidding! Have a fantastic time my little genius. Don't forget to write back when you can. Good Luck! I am so excited for you. \n\n" + "Love, Mom");
        break;

        //home room 
        case "hmr_teacher":
            scr_text("Good morning students, please sit down and listen to the announcements");
                scr_option("yeah", "npc 1 - yes")
                scr_option("yeah", "npc 1 - no")
        break;
            case "npc 1 - no":
                scr_text("MANNNN SCREW YOU");
            break;
            case "npc 1 - yes":
                scr_text("COOL");

}
}