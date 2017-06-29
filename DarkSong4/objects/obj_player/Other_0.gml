if !(x >= 0 && x < room_width && y < 0) {
    x = xstart;
    y = ystart;
    chat_add("Player fell out of bounds! Returning.");
}

