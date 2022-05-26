class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        std::map<int, int> m;
      
        for(int i{0}; i < nums.size(); ++i){
          auto it = m.find(target - nums.at(i));
          
          if ( it != m.end()){
            return std::vector<int> {it->second, i};
          }else {
            m.insert({nums.at(i), i});
          }
        }
      return std::vector<int> {-1};
    }
};