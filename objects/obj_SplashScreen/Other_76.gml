/// @description End Splash Screen
// You can write your code in this editor
if event_data[? "event_type"] == "sequence event"
{
switch (event_data[? "message"])
    {
    case "splash_over":
        end_splash_room();
		break;
    }
}