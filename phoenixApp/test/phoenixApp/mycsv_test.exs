defmodule PhoenixApp.MycsvTest do
  use ExUnit.Case
  alias PhoenixApp.Mycsv

  describe "sum_from_csv/1" do

    test "there is a csv file, returns the sum of values" do
      response = Mycsv.sum_from_csv("mycsv")
      expected_response = {:ok, %{result: 37}}
      assert response == expected_response
    end

    test "error finding csv file" do
      response = Mycsv.sum_from_csv("do_not_exists_file")
      expected_response = {:error, %{reason: "Invalid file"}}
      assert response == expected_response
    end

  end

end
