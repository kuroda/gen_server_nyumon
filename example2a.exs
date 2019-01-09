list = [1, 2, 3, 4]

list =
  if true do
    [0 | list]
  else
    list
  end

IO.inspect list
