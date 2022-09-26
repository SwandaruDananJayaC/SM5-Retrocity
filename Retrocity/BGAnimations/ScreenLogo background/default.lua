return Def.ActorFrame {
	LoadActor( "BG" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
	};
    LoadActor("main.png")..{
      InitCommand=function(s) s:xy(_screen.cx,_screen.cy) end,
    };

}