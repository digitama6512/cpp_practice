#if !defined(LEETCODE_H)
#define LEETCODE_H

/* 用于leetcode程序的头文件 */

#include <vector>
using namespace std;

/* leetcode用于作答的类
 * 类中的函数均为习题的答案
 */
class Solution
{
  public:
    /* 1. 两数之和 */
    vector<int> twoSum(vector<int> &nums, int target);
};

int add(int a, int b);
#endif // LEETCODE_H
