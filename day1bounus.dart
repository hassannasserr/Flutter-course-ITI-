void main() {
  list<double>courses=[];
  courses.add(99.5);
    courses.add(76.7);
  courses.add(100);
    courses.add(80);
  courses.add(30);
bool f=valid(courses);

  
  if(f){
    double sum=getsum(courses);
    double pre=getpre(sum);
    print("the sum of your grades is $sum");
    print ("the precentage of your grades is $pre");
    
  } 
}


bool valid(list<double>courses){
  for(int i=0;i<5;i++){
    if(courses[i]>100||courses[i]<0){
      print("invalid course grade");
      return false;
    }
  }
  return true;
}

double getsum(list<double>courses){
      double sum=0;
 for(int i=0;i<5;i++){
      sum+=courses[i];
    }
  return sum;
}

double getpre(double sum){
     
  double pre=(sum/500)*100;
 
  return pre;
}
