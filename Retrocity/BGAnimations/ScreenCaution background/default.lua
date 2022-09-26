local t = Def.ActorFrame{}

t[#t+1] = Def.ActorFrame {
	LoadActor( "centered" )..{
		OnCommand=cmd(FullScreen;diffusealpha,0;decelerate,0.3;diffusealpha,1;sleep,2.4;accelerate,0.3;diffusealpha,0);
	};
};

return t;