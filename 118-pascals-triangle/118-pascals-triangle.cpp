class Solution {
public:
    vector<vector<int>> generate(int numRows) {
      std::vector<std::vector<int> > vect; 
      
      for(auto i{1}; i <= numRows; ++i){
        std::vector<int> col;
        int c = 1;
        
        for(auto j{1}; j <= i; ++j){
          col.push_back(c);
          c = c * (i - j) / j;
        }
        vect.push_back(col);
        col.clear();
      }
      return vect;
    }
};