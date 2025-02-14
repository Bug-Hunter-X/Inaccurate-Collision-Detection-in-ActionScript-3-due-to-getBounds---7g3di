function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Check if both objects are on the display list
  if (!obj1.parent || !obj2.parent) return false;
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);
  return rect1.intersects(rect2);
}

// ... later in your code ...

if (checkCollision(myMovieClip, myOtherMovieClip)) {
  trace("Collision detected!");
}

//This corrected code explicitly checks if both objects have parents (are added to the display list) before proceeding with the collision detection.  This prevents incorrect results when objects are not yet displayed.