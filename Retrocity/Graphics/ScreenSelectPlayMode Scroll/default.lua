local gc = Var("GameCommand");
local st = gc:GetName();

local t = Def.ActorFrame {
	LoadActor( "preview " .. st ) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-426;y,SCREEN_CENTER_Y-239);
		OnCommand=cmd(finishtweening;diffusealpha,0;glow,color("1,1,1,0");linear,0.2;glow,color("1,1,1,1");linear,0.0;diffusealpha,1;linear,0.2;glow,color("1,1,1,0"));
		GainFocusCommand=cmd(visible,true;queuecommand,"On");
		LoseFocusCommand=cmd(queuecommand,"Off";visible,false);
	};
};

return t;