#include<iostream>
#include<chrono>
using namespace std;
int fib(int n){
  if(n == 1){
    return 0;
  }
  if(n == 2){
    return 1;
  }
  else{
    return fib(n-1) + fib(n-2);
  }
}

int main(){
  int n;
  clock_t start_time,end_time;
  cout<<"ith fibonacci number : 1";
  cin>>n;
  std::chrono::time_point start_time = now();
  cout<<fib(n)<<" is the "<<n<<"th fibonacci value " ;
  std::chrono::time_point end_time = now();
  cout<<endl<<"The time taken to run the function has been "<<(end_time - start_time) / CLOCKS_PER_SEC<<endl;
  
 }
