local gc = Var("GameCommand");

local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(x,SCREEN_LEFT-64;y,SCREEN_CENTER_Y-176);
	};

      LoadFont("_song")..{
	  Text=gc:GetText();
	GainFocusCommand=cmd(visible,true;queuecommand,"On");
	LoseFocusCommand=cmd(queuecommand,"Off";visible,false);
      };

};

return t;