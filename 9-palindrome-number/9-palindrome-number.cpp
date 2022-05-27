class Solution {
public:
  bool isPalindrome(int x) {
    long long rem {0};
    long long rev {0};
    int n {x};
    
    if(x < 0) return false;
    
    while(n){
      rem = n % 10;
      rev = rev * 10 + rem;
      n /= 10;
    }

    if(x == rev) return true;
    
    return false;
  }
};