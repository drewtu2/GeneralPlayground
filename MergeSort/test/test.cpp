#include <iostream>
#include <gtest/gtest.h>
#include "../src/MergeSort.cpp"

TEST(MergeSortTest, SingleValue) {
  int a[] = {0};
  int expect[] = {0};
  bool areEqual = true;

  MergeSort(a, sizeof(a)/sizeof(a[0]));
  
  for(int i = 0; i < sizeof(a)/sizeof(a[0]); i++)
  {
    if(expect[i] != a[i]) areEqual = false;
  }

  EXPECT_TRUE(areEqual);
}

TEST(MergeSortTest, NineToOne)
{
  int a [] = {9, 8, 7, 6, 5, 4, 3, 2, 1};
  int expect [] = {1, 2, 3, 4, 5, 6, 7, 8 ,9};
  bool areEqual = true;

  MergeSort(a, sizeof(a)/sizeof(a[0]));
  
  for(int i = 0; i < sizeof(a)/sizeof(a[0]); i++)
  {
    if(expect[i] != a[i]) areEqual = false;
  }

  EXPECT_TRUE(areEqual);
}

TEST(MergeSortTest, AllEights)
{
  int a [] = {8, 8, 8, 8, 8, 8};
  int expect [] = {8, 8, 8, 8, 8, 8};

  bool areEqual = true;

  MergeSort(a, sizeof(a)/sizeof(a[0]));
  
  for(int i = 0; i < sizeof(a)/sizeof(a[0]); i++)
  {
    if(expect[i] != a[i]) areEqual = false;
  }

  EXPECT_TRUE(areEqual);
}

TEST(MergeSortTest, EmptyArray)
{
  int a[] = {};

  ASSERT_ANY_THROW(MergeSort(a, sizeof(a)/sizeof(a[0])));
}
