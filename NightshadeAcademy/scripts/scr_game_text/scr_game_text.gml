
function scr_game_text(_text_id){
	switch(_text_id){
		
		case "hmr_teacher":
			scr_text("Since you're new here, I thought we'd test your knowledge of our lovely boarding school.");
			scr_text("First question, What year was this school founded?");
				scr_option("Um, How should I know", "This is a simple question... This is why we shouldn't allow lottery kids into this school.");
				scr_option("---insert year---", "Good. Next Question, What is our headmistresses name?");
			break;
			
}
}