class Solution {
public:
    vector<int> getRow(int rowIndex) {
      std::vector<int> vec;
      long c{1};
        for(auto i{1}; i <= (rowIndex + 1); ++i){
          vec.push_back(c);
          c = c * ((rowIndex + 1) - i) / i;
        }
      return vec;
    }
};