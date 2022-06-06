class Solution {
public:
    int removeDuplicates(vector<int>& nums) { 
      for(std::size_t i{1}; i < nums.size(); ++i){
        if(nums[i] == nums[i-1]){
          nums.erase(nums.begin() + i);
          --i;
          continue;
        } 
      }
      return nums.size();
    }
};