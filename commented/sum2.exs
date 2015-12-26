defmodule Sum do
  def sum_seq(from, to) do
    :lists.seq(from, to - 1) |> :lists.sum
  end
end

0..5000-1
|> Enum.map(&(Task.async(fn -> Sum.sum_seq(10000*&1, 10000*(&1+1)) end)))
|> Enum.map(&(Task.await/1))
|> Enum.reduce(fn (x, acc) -> x+acc end)
|> IO.puts

