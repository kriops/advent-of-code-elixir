defmodule Aoc202301 do
  @spec calibrate(binary()) :: number()
  def calibrate(data) do
    data
    |> String.split("\n", trim: true)
    |> Enum.map(fn x -> Regex.scan(~r"\d", x) end)
    |> Enum.map(&List.flatten/1)
    |> Enum.map(fn list -> [List.first(list), List.last(list)] end)
    |> Enum.map(&Enum.reduce(&1, fn x, acc -> acc <> x end))
    |> Enum.map(&String.to_integer(&1))
    |> Enum.sum()
  end

  @spec advanced_calibrate(binary()) :: number()
  def advanced_calibrate(data) do
    data
    |> String.split("\n", trim: true)
    |> Enum.map(&number_search/1)
    |> Enum.map(&List.flatten/1)
    |> Enum.map(fn list -> [List.first(list), List.last(list)] end)
    |> Enum.map(&Enum.reduce(&1, fn x, acc -> acc <> x end))
    |> Enum.map(&String.to_integer(&1))
    |> Enum.sum()
  end

  @spec number_search(binary(), [binary()]) :: [binary()]
  defp number_search(string, acc \\ []) do
    next_step = String.slice(string, 1..-1//1)

    case string do
      "" -> Enum.reverse(acc)
      "1" <> _ -> number_search(next_step, ["1" | acc])
      "2" <> _ -> number_search(next_step, ["2" | acc])
      "3" <> _ -> number_search(next_step, ["3" | acc])
      "4" <> _ -> number_search(next_step, ["4" | acc])
      "5" <> _ -> number_search(next_step, ["5" | acc])
      "6" <> _ -> number_search(next_step, ["6" | acc])
      "7" <> _ -> number_search(next_step, ["7" | acc])
      "8" <> _ -> number_search(next_step, ["8" | acc])
      "9" <> _ -> number_search(next_step, ["9" | acc])
      "one" <> _ -> number_search(next_step, ["1" | acc])
      "two" <> _ -> number_search(next_step, ["2" | acc])
      "three" <> _ -> number_search(next_step, ["3" | acc])
      "four" <> _ -> number_search(next_step, ["4" | acc])
      "five" <> _ -> number_search(next_step, ["5" | acc])
      "six" <> _ -> number_search(next_step, ["6" | acc])
      "seven" <> _ -> number_search(next_step, ["7" | acc])
      "eight" <> _ -> number_search(next_step, ["8" | acc])
      "nine" <> _ -> number_search(next_step, ["9" | acc])
      _ -> number_search(next_step, acc)
    end
  end
end
