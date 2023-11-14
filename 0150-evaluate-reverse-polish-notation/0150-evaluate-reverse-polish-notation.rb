# @param {String[]} tokens
# @return {Integer}
OPERATORS = ["+", "-", "*", "/"]

def eval_rpn(tokens)
  stack = []
  
  tokens.each do |t|
    if OPERATORS.include?(t)
      second = stack.pop
      first = stack.pop
      val = first.to_f.send(t, second.to_f)
      if t == "/"
        val = val.to_i
      end
      stack << val
    else
      stack << t
    end
  end
  
  stack[0].to_i
end