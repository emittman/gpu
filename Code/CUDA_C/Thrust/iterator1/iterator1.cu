#include <thrust/device_vector.h>
#include <iostream>
#include <vector>
#include <math.h>

int main(){
  // allocate device vector
  std::vector<int> h_vec(4);
  for(int i=0; i<4; i++)
    h_vec[i] = 1;

  thrust::device_vector<int> d_vec(4);
  thrust::device_vector<int>::iterator begin = d_vec.begin();
  thrust::device_vector<int>::iterator end = d_vec.end();
  
  int length = end - begin;

  end = d_vec.begin() + 3; // define a sequence of 3 elements
  thrust::copy(d_vec.begin(),d_vec.end(),h_vec.begin());
  for(int n=0; n<4; n++){
    std::cout << h_vec[n];

    }
  return 0;
}