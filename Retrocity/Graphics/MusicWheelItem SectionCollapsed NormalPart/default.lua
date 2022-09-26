local group;

local t = Def.ActorFrame{
	Def.Sprite {
		SetMessageCommand=function(self,params)
			group = params.Text;
			local so = GAMESTATE:GetSortOrder();
			if group then
				self:Load(jacketsetwi(self,params))
			end;
			self:setsize(230,230)
		end;
	};
	LoadActor(THEME:GetPathG("","_jackets/over.png"))..{
		InitCommand=function(s) s:visible(false) end,
		SetMessageCommand=function(self,params)
			local pt_text = params.Text;
			local group = params.Text;
			if group then
				if so == "SortOrder_Group" then
					self:visible(true)
				else
					self:visible(false)
				end
			end;
			self:setsize(230,230)
		end;
	};
};
return t;
