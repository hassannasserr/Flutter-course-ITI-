class Task{
  int id;
  String text;
  bool isDone;
  static int nextId = 0;
  //Task({required this .id,required this.text,this.isDone = false});
  
  Task.add({required this.text,this.isDone = false}):id = nextId++;
}