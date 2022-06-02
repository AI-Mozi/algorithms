class Solution {
public:
    int lengthOfLastWord(string s) {
      std::vector<string> vect;
      std::stringstream ss(s);
      std::string str;
      char delim = ' ';
      int counter;
      
      while (std::getline(ss, str, delim)) {
        if (!str.empty()){
          vect.push_back(str);
        }
      }
      
      
      std::string last = vect.back();
      return last.length();;
    }
};