local t = Def.ActorFrame{};

SOUND:PlayAnnouncer("title menu game name")
--Logo
t[#t+1] = Def.ActorFrame {
	
	LoadActor( "backlight" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,1;);
	};
	LoadActor( "main" )..{
		InitCommand=cmd(diffusealpha,1;x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-19;zoomx,0.96;zoomy,0.95;);
	};
	LoadActor( "copy" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+212;zoomx,0.77;zoomy,0.8;);
	};
	
	
	Def.BitmapText{
    Font="_futura pt medium 30px";
    InitCommand=cmd(settext,"MDX:A:F:A:2021010100";halign,0;xy,SCREEN_LEFT+10,SCREEN_TOP+12;zoomx,0.62;zoomy,0.6;strokecolor,color("0,0,0,0.5"));
  };


	Def.Quad{
		InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;);
		OnCommand=cmd(linear,0.25;diffusealpha,0;sleep,9.5;linear,0.25;diffusealpha,1;);
	
	};
	
	LoadActor(THEME:GetPathB("","_Arcade Decorations/default.lua"))..{
	
	};
	
	
	
};



return t
