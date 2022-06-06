class Solution {
public:
    int strStr(string haystack, string needle) {
      for(auto i{0}; i < haystack.length(); ++i){
        string sub = haystack.substr(i, needle.length());
        if( sub == needle) return i;
      }
      return -1;
    }
};