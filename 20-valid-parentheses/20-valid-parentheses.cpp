class Solution {
public:
    bool isValid(string s) {
      std::map<char, char> m {
        {'{', '}'}, {'(', ')'}, {'[', ']' },
        {'}', '{'}, {')', '('}, {']', '[' },
      };
      std::vector<char> open {'{', '[', '('};
      std::stack<char> st;
      
      for(auto i{0}; i < s.length(); ++i){
        auto rev = m[s[i]];
        
        if (std::find(open.begin(), open.end(), s[i]) != open.end()) {
          st.push(s[i]);
        }else {
            if(st.empty() || st.top() != rev){
            return false;
          }
          st.pop();
        }
      }
      return st.empty();
    }
};