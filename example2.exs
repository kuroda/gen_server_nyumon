list = [1, 2, 3, 4]

if true do
  list = [0 | list]
end

IO.inspect list
