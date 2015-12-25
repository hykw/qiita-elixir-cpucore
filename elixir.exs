IO.puts Enum.reduce(0..10000*5000-1, fn(x, acc) -> x + acc end)
