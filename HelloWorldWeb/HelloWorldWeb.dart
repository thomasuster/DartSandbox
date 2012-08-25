
#import('dart:html');

num rotatePos = 0;

void main() {
  query("#text").text = "Click me!";

  query("#text").on.click.add(rotateText);
}

void rotateText(Event event) {
  rotatePos += 360;

  var text = query("#text");

  text.style.transition = "1s";
  text.style.transform = "rotate(${rotatePos}deg)";
}
