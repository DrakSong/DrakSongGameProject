if (!parentInit) {
    if (parent) {
        dx = x - parent.x;
        dy = y - parent.y;
    } else {
        dx = 0;
        dy = 0;
    }
    parentInit = true;
}

