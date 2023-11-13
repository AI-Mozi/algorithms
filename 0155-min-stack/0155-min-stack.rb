class MinStack
    def initialize()
      @stack = []
      @min_stack = []
    end

=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      if @min_stack.empty? || val < get_min
        @min_stack << val
      else
        @min_stack << get_min
      end

      @stack << val
    end

=begin
    :rtype: Void
=end
    def pop()
      @stack.pop
      @min_stack.pop
    end

=begin
    :rtype: Integer
=end
    def top()
      @stack[-1]
    end

=begin
    :rtype: Integer
=end
    def get_min()
      @min_stack[-1]
    end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()