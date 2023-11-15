# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  stack = []
  res = []
  
  backtrack = -> (openP, closeP) do
    if openP == closeP && openP == n
      res << stack.join('')
      return res
    end

    if openP < n
      stack << "("
      backtrack.call(openP + 1, closeP)
      stack.pop
    end

    if closeP < openP
      stack << ")"
      backtrack.call(openP, closeP + 1)
      stack.pop
    end
  end
  backtrack.call(0, 0)
  res
end
