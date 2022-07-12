class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        std::unordered_map<int,bool> dupl = {};
      
        for(const auto num : nums){
          if(dupl[num] == true) return true;
          dupl[num] = true;
        }
      return false;
    }
};