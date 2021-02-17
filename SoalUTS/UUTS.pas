unit health;

interface
function darah(random_skill_bot,H_mana_b:integer):integer;

implementation
function darah(random_skill_bot,H_mana_b:integer):integer;

var
   x,H_Health_h,skill_1b,skill_2b,skill_3b,mana_skill_1b,mana_skill_2b,mana_skill_3b:integer;
begin
     if random_skill_bot=0 then
                                 begin
                                      x:=1;
                                      random_skill_bot:=1;
                                      H_Health_h:=H_Health_h-skill_1b;
                                      H_mana_b:=H_mana_b+mana_skill_1b;
                                 end
                              else if (random_skill_bot=1) and (H_mana_b>=40) then
                                   begin
                                        x:=2;
                                        random_skill_bot:=2;
                                        H_Health_h:=H_Health_h-skill_2b;
                                        H_mana_b:=H_mana_b-mana_skill_2b;
                                   end
                              else if (random_skill_bot=2) and (H_mana_b>=90)then
                                   begin
                                        x:=3;
                                        random_skill_bot:=3;
                                        H_Health_h:=H_Health_h-skill_3b;
                                        H_mana_b:=H_mana_b-mana_skill_3b;
                                   end;
end;

