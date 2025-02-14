function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);
  return rect1.intersects(rect2);
}

// ... later in your code ...

if (checkCollision(myMovieClip, myOtherMovieClip)) {
  trace("Collision detected!");
}

//This code has a potential bug. If either myMovieClip or myOtherMovieClip is not added to the display list, getBounds() will return a rectangle with zero width and height, resulting in false negatives (no collision detected).