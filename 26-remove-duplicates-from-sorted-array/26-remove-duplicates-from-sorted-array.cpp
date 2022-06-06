class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
      
      for(std::size_t i{1}; i < nums.size(); ++i){
        //std::cout << i << nums[i] << endl
        
        if(nums[i] == nums[i-1]){
          // auto it = nums.begin() + i;
          // std::rotate(it, it + 1, nums.end());
          nums.erase(nums.begin() + i);
          --i;
          continue;
        } 
      }
      return nums.size();
    }
};