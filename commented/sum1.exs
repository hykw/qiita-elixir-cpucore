defmodule Sum do
  def calc(from, to) do
    Enum.reduce(from..to-1, fn(x, acc) -> x + acc end)
  end
end

:lists.seq(0, 5000-1)
|> Enum.map(&(Task.async(fn -> Sum.calc(10000*&1, 10000*(&1+1)) end)))
|> Enum.map(&(Task.await/1))
|> Enum.reduce(fn (x, acc) -> x+acc end)
|> IO.puts

