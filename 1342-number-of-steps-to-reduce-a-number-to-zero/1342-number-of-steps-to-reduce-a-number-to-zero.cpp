class Solution {
public:
    int counter {0};
    int numberOfSteps(int num) {
      
      while (num){
        if(num & 1){
          num -= 1;
        }else{
          num /= 2;
        }
        ++counter;
      }
      
      return counter;
    }
};