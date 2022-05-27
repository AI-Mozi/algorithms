class Solution {
public:
    int counter {0};
    int numberOfSteps(int num) {
      
      if (num == 0 ){
        return counter;
      }
      
      if(num % 2 == 0){
        ++counter;
        return numberOfSteps(num/2);;
      }else{
        ++counter;
        return numberOfSteps(num - 1);;
      }
    }
};