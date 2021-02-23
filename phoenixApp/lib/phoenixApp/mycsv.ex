defmodule PhoenixApp.Mycsv do
  def sum_from_csv(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, file}) do
    sum =
      file
      |> String.split(",")
      |> Enum.map(fn x -> String.to_integer(x) end)
      |> Enum.sum()

    {:ok, %{result: sum}}
  end

  defp handle_file({:error, _any}), do: {:error, %{reason: "Invalid file"}}
end
