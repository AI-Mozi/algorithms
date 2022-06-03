class Solution {
public:
    bool isValid(string s) {
      std::map<char, char> m {
        {'{', '}'}, {'(', ')'}, {'[', ']' },
        {'}', '{'}, {')', '('}, {']', '[' },
      };
      std::vector<char> open {'{', '[', '('};
      std::vector<char> stack;
      
      for(auto i{0}; i < s.length(); ++i){
        auto rev = m[s[i]];
        
        if (std::find(open.begin(), open.end(), s[i]) != open.end()) {
          stack.push_back(s[i]);
        }else {
            if(stack.empty() || stack.back() != rev){
            return false;
          }
          stack.pop_back();
        }
      }
      return stack.empty();
    }
};