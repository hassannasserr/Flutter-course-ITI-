void main() {
 
}

void hi(String x){
  print("Welcome to my application");
  print("welcome $x");
}

int calc(int n1,int n2,String x){
 int  res=0;
  if(x=='+'){
    res= n1+n2;
  }
  else if(x=='-'){
    res=n1-n2;
  }
  else {
    res=n1*n2;
  }
  return res;
}

void checkTemp(int temp){
  if(temp>=25 &&temp<=30){
    print("Normal temp");
  }
  else if(temp<25){
    print("cold temp");
  }
  else if(temp>30){
    print("hot temp");
  }
  else{
    print("Ambiguous ,can't detect");
  }
}

void Stfc(String x){
  if(x=="FCI"){
    print("You're eligiable to programming tracks");
  }
 else if(x=="Engineering"){
   print("You're eligible to network and embedded tracks");
 }
  else if(x=="commerce"){
    print("You're eligiable to ERP and social media tracks");
  }
  else{
    print("You're eligable to SW fundamentals track");
  }
}

void getodd(int n1,int n2){
  int start,end;
  if(n1>=n2){
    start=n2;
    end=n1;
  }
  else{
   start = n1;
    end=n2;
  }
  for(int i=start;i<=end;i++){
    if(i%2!=0)print(i);
  }
 
}

