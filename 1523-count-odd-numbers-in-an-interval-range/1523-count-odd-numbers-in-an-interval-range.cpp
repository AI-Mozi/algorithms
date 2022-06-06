class Solution {
public:
    int countOdds(int low, int high) {
      auto x = (high - low + 1);
      
      if( x & 1 && (high & 1 || low & 1)) return (x / 2 + 1);
      return x / 2;
    }
};