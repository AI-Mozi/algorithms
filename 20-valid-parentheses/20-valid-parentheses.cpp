class Solution {
public:
    bool isValid(string s) {
      std::map<char, char> m {
        {'{', '}'}, {'(', ')'}, {'[', ']' },
        {'}', '{'}, {')', '('}, {']', '[' },
      };
      // std::vector<char> open {'{', '[', '('};
      
      unordered_map<char, bool> isOpening{
        {'}', false},  {')', false},  {']', false},
        {'{', true}, {'(', true}, {'[', true},
      };
      stack<char> st;
      
      for(auto i{0}; i < s.length(); ++i){
        auto rev = m[s[i]];
        
        if (isOpening[s[i]]) {
          st.push(s[i]);
        }else{
          if(st.empty() || st.top() != rev){
            return false;
          }
          st.pop();
        }
      }
      return st.empty();
    }
};