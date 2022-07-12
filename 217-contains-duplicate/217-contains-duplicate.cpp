class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        std::set<int> dupl = {};
      
        for(auto x : nums){
          if(dupl.find(x) != dupl.end()){ return true; }
          dupl.insert(x);
        }
      return false;
    }
};