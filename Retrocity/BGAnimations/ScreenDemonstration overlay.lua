return Def.ActorFrame{
	-- A temporary frame for the jacket.
	Def.Quad {
		InitCommand=cmd(horizalign,right;vertalign,bottom;x,_screen.w-39;y,_screen.h-14;zoomto,192,192;diffuse,ColorDarkTone(ScreenColor("Default"));diffusealpha,0.9)
	},
	-- Jacket (real or not) of the currently playing song.
	-- todo: make getting the jacket a bit more of a... global function?
	Def.Sprite {
		InitCommand=cmd(horizalign,right;vertalign,bottom;x,_screen.w-49;y,_screen.h-24),
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if song and song:HasJacket() then
				-- ...The jacket on ScreenEditMenu overlay uses LoadBanner instead of just Load.
				-- Will it make any difference? ... I mean, probably not, but we'll see.
				self:LoadBanner(song:GetJacketPath())
			elseif song and song:HasBackground() then
				self:LoadBanner(song:GetBackgroundPath())
			else
				self:LoadBanner(THEME:GetPathG("Common","fallback background"))
			end
			self:scaletoclipped(172,172)
		end
	},
	-- Song title.
	Def.BitmapText {
		Font = "Common Fallback Font",
		InitCommand=cmd(horizalign,right;x,_screen.w-250;y,_screen.h-64;strokecolor,color("#42292E")),
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if song then
				self:settext(song:GetDisplayFullTitle())
			else
				self:settext("")
			end
		end
	},
	-- Song artist.
	Def.BitmapText {
		Font = "Common Fallback Font",
		InitCommand=cmd(horizalign,right;x,_screen.w-250;y,_screen.h-40;zoom,0.7;strokecolor,color("#42292E")),
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if song then
				self:settext(song:GetDisplayArtist())
			else
				self:settext("")
			end
		end
	},
}