defmodule Sum do

  def sum_loop(from, to) do
    sum_loop1(from, to, 0)
  end

  defp sum_loop1(to, to, acc), do: acc

  defp sum_loop1(from, to, acc) do
    sum_loop1(from + 1, to, acc + from)
  end

end

0..5000-1
|> Enum.map(&(Task.async(fn -> Sum.sum_loop(10000*&1, 10000*(&1+1)) end)))
|> Enum.map(&(Task.await/1))
|> Enum.reduce(fn (x, acc) -> x+acc end)
|> IO.puts

