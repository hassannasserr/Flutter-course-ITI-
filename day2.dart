
void main(){
  Rectangle r = Rectangle(10, 20);
  Rectangle c = Square(10);
  print(r.circumference());
  print(c.width);
  print(r.toString());
  print(c.toString());
///////////////////////////////////////////////////////////////////////
Map<String, int> phonebook = {
  "Hassan": 5,
  "Omar": 0122456798,
  "cristiano": 01141320579
};
phonebook["Hassan"] = 01112555237;
phonebook.remove("Omar");
phonebook.addAll({"Ahmed": 01112555237, "Mohamed": 01112555237});
print(phonebook);
///////////////////////////////////////////////////////////////////////
List<Product> carts = [
  Product("apple", 10.3, 5),
  Product("banana", 5.7, 10),
  Product("orange", 7.5, 7),
  Product("mango", 15.0, 3),
  Product("grape", 27.3, 2),
];
carts[3].quantity=10;
carts.removeAt(2);
carts.add(Product("kiwi", 12.5, 4));
double totalprice = 0;
for(int i=0; i<carts.length; i++){
  totalprice += carts[i].price * carts[i].quantity;
}
print(totalprice);
///////////////////////////////////////////////////////////////////////
Stack <int>stack=Stack();
print(stack.isEmpty());
stack.push(5);
stack.push(10);
stack.push(30);
print(stack.length);
stack.push(12);
stack.push(27);
stack.push(45);
print(stack.top());
stack.pop();
stack.push(17);
stack.printStack();

}
class Rectangle{
  double width;
  double height;
  Rectangle(this.width, this.height);
  double circumference(){
    return 2*(width+height);
  }
  @override
  String toString() {
    return "i am a rectangle";
  }
}

class Square extends Rectangle{
  double side;
  Square(this.side) : super(side, side);
  
  double circumference(){
    return 4*side;
  }
   @override
  String toString() {
    return "i am a square";
  }
}


class Product{
String name;
double price;
int quantity;
Product(this.name, this.price, this.quantity);
}

class Stack <T> {
  List<T> stack = [];
  void push(T item){
    stack.add(item);
  }
  void pop(){
    stack.removeLast();
  }
  T top(){
    return stack.last;
  }
  bool isEmpty(){
    return stack.isEmpty;
  }
  int get length{
    return stack.length;
  }
  void printStack(){
    for(int i=stack.length-1; i>=0; i--){
      print(stack[i]);
    }
  }  





}