local gc = Var("GameCommand");

local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(Setsize,SCREEN_WIDTH,25;diffuse,Color("Blue");horizalign,Left;faderight,.5);
	};

      LoadFont("_song")..{
	  Text=gc:GetText();
          GainFocusCommand=cmd(diffuse,Color("Green"););
	  LoseFocusCommand=cmd(diffuse,Color("White"););
      };

};

return t;