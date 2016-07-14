/* Merge sort in C++ */
#include <iostream>

// Function to Merge Arrays L and R in to A
// leftCount = number of elements in L
// rightCount = number of elements in R
void Merge(int *A, int *L, int leftCount, int *R, int rightCount){
  int i = 0; // i - marks index of left subarray (L)
  int j = 0; // j - marks index of right subarray (R)
  int k = 0; // k - marks index of merged subarray (A)
  
  while(i < leftCount && j < rightCount) {
    if(L[i] < R[j]){
      A[k++] = L[i++];
    }
    else A[k++] = R[j++];
  }
  while(i < leftCount) A[k++] = L[i++];
  while(j < rightCount) A[k++] = R[j++];
} 

//Recursive Function to sort an array of integers
void MergeSort(int *A, int n){
  int mid, i, *L, *R;

  if(n == 0){
    std::cout << "Array is Empty!\n";
    throw "Empty array";
  }
  else if(n < 2) return; //base condition. If the array has less than two elements, do nothing.

  mid = n/2; //find the middle index

  //create left and right subarrays
  //mid elements (from index 0 till mid-1) should be part of left sub-array
  //and (n-mid) elements (from mid to n-1) will be par tof the right sub-array
  
  L = new int[mid];   //Create left subarray
  R = new int[n-mid]; //Create right subarray

  for(i = 0; i < mid; i++){
    L[i] = A[i];
  }
  for(i = mid; i < n; i++){
    R[i-mid] = A[i];
  }

  MergeSort(L, mid);    //sort the left subarray
  MergeSort(R, n-mid);  //sort the right subarray
  Merge(A,L,mid,R,n-mid); //Merge L and R into A as sorted list
  
  delete(L);
  delete(R);

}

/*int main() {
  // Code to test the MergeSort function. 

    int A[] = {6,2,3,1,9,10,15,13,12,17}; // creating an array of integers.
    int i,numberOfElements;

        // finding number of elements in array as size of complete array in
        // bytes divided by size of integer in bytes.
        // This won't work if array is passed to the function because array
        // is always passed by reference through a pointer. So sizeOf
        // function will give size of pointer and not the array.
        // Watch this video to understand this concept - http://www.youtube.com/watch?v=CpjVucvAc3g
         numberOfElements = sizeof(A)/sizeof(A[0]);
        std::cout << "Number of elements: " << sizeof(A) << std::endl;      
        // Calling merge sort to sort the array.
         MergeSort(A,numberOfElements);
         
         //printing all elements in the array once its sorted.
         for(i = 0;i < numberOfElements;i++) {
           std::cout << A[i] << std::endl;
         }
         return 0;
}*/
