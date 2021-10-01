void main() {
  Rectangle rectangle1 = Rectangle("Rectangle 1", 20, 25);
  Rectangle rectangle2 = Rectangle("Rectangle 2", 500, 157);
  Rectangle rectangle3 = Rectangle("Thor", 25, 90);

  List<Rectangle> rectangles = [
    rectangle1,
    rectangle2,
    rectangle3,
  ];

  rectangles.forEach((rectangle) {
    rectangle.show();
  });
}

class Rectangle {
  String name;
  int height;
  int width;

  Rectangle(this.name, this.height, this.width);

  void show() {
    print(name +
        "\n\theight: " +
        height.toString() +
        "\n\tWidth: " +
        width.toString() +
        "\n");
  }
}
