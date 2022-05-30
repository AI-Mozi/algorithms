class Solution {
public:
    string longestCommonPrefix(vector<string>& strs) {
      std::string common {""};
      
      for(auto i{0}; i < strs[0].size(); ++i){
        char current {strs[0][i]};
        
        for(auto j{0}; j < strs.size(); ++j){
          if (strs[j][i] != current) return common;
        }
        common = common + current;
      }
      
      return common;
    }
};