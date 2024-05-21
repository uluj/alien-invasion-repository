// obj_enemy Alarm[0] Event

// Check if enemies are allowed to move


switch (_canpir)
{
    case true:
        _canpir = false;
        break;

    case false:
        _canpir = true;
        break;
}

    x += _int; // Continue moving horizontally; fixed missing semicolon
    // Reactivate the alarm for continued movement checks
    alarm[0] = global.second;

