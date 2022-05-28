class Solution {
public:
    int romanToInt(string s) {
      std::map<string, int> m{ 
        {"I", 1}, { "V", 5 }, { "X", 10 }, { "L", 50 }, { "C", 100 }, 
        { "D", 500 }, { "M", 1000 },
      };
      int sum {0};
      
      for(auto i {0}; i < s.size(); ++i){
        string current {s[i]};
        string next {s[i + 1]};
        
        if ( m[next] > m[current] ){          
          sum -= m[current];
        }else{
          sum += m[current];
        }
      }
      return sum;
    }
};