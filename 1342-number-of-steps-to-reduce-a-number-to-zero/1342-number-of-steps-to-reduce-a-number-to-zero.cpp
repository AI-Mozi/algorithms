class Solution {
public:
    int counter {0};
    int numberOfSteps(int num) {
      
      if (!num) return counter;
      
      ++counter;
      if(num & 1) return numberOfSteps(num - 1);

      return numberOfSteps(num/2);
    }
};