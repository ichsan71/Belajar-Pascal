unit math;
interface
function cubeVolumeplus(x,y:integer):integer;
function cubeVolume1(x:integer):integer;
function cubeVolume2(y:integer):integer;

implementation
function cubeVolumeplus(x,y:integer):integer;
begin
     x:=power(x,3);
     y:=power(y,3);
     cubeVolumeplus:=x+y;
end;

function cubeVolume1(x:integer):integer;
begin
     cubeVolume1:=power(x,3);
end;

function cubeVolume2(y:integer):integer;
begin
     cubeVolume2:=power(y,3);
end;
end.

