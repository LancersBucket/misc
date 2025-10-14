function ease_in()
{
var t = argument[1]; //time
var b = argument[2]; //begin
var c = argument[3]; //change
var d = argument[0]; //duration

t /= d;

return c*t*t*t+ b;
}