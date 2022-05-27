class Solution {
public:
    int counter {0};
    int numberOfSteps(int num) {
      
      if (num == 0 ){
        return counter;
      }
      
      if(num % 2 == 0){
        ++counter;
        numberOfSteps(num/2);
        return counter;
      }else{
        ++counter;
        numberOfSteps(num - 1);
        return counter;
      }
    }
};