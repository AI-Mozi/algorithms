class Solution {
public:
    int removeDuplicates(vector<int>& nums) { 
      std::vector<int> n;
      n.push_back(nums[0]);
      for(std::size_t i{1}; i < nums.size(); ++i){
        if(nums[i] == nums[i-1]){
          continue;
        } 
        n.push_back(nums[i]);
      }
      
      n.swap(nums);
      return nums.size();
    }
};