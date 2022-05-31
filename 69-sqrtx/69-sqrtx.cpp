class Solution {
public:
    int mySqrt(int x) {
      if( x == 1 || x == 0 ) return x;
      
      long l{1};
      long r{x};
      long ans;
      
      while(l <= r){
        long mid = (l + r) / 2;
        long sqrt = mid * mid;
        
        if(sqrt == x) return mid;
        
        if (sqrt <= x){
          ans = mid;
          l = mid + 1;
        }else {
          r = mid - 1;
        }
      }
      return ans;
    }
};