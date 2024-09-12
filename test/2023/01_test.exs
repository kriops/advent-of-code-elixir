defmodule Aoc_2023_01 do
  use ExUnit.Case

  test "Calibrate" do
    data = """
    1abc2
    pqr3stu8vwx
    a1b2c3d4e5f
    treb7uchet
    """

    assert Aoc202301.calibrate(data) == 142
  end

  test "Day 1 Part 1" do
    result =
      File.read!("data/2023/d01p1.data")
      |> Aoc202301.calibrate()

    IO.puts("2023, Day 1, Part 1: #{result}")
  end

  test "Advanced_Calibrate" do
    data = """
    two1nine
    eightwothree
    abcone2threexyz
    xtwone3four
    4nineeightseven2
    zoneight234
    7pqrstsixteen
    """

    assert Aoc202301.advanced_calibrate(data) == 281
  end

  test "Day 1 Part 2" do
    result =
      File.read!("data/2023/d01p2.data")
      |> Aoc202301.advanced_calibrate()

    IO.puts("2023, Day 1, Part 2: #{result}")
  end
end
