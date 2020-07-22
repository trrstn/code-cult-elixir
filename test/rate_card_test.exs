defmodule RateCardTest do
  use ExUnit.Case
  doctest RateCard

  describe "Rate card pricing" do
    test "vehicle unknown returns error distance" do
      assert RateCard.get_pricing_for("duque", "string") == {:error, :invalid_distance}
      assert RateCard.get_pricing_for("roque", 1) == {:error, :invalid_distance}
    end

    test "vehicle car returns correct price" do
      assert RateCard.get_pricing_for("bike", "string") == {:error, :invalid_distance}
      assert RateCard.get_pricing_for("bike", -0.1) == {:error, :invalid_distance}
      assert RateCard.get_pricing_for("bike", 0.1) == {:ok, 15}
      assert RateCard.get_pricing_for("bike", 5.1) == {:ok, 17}
      assert RateCard.get_pricing_for("bike", 10.1) == {:ok, 22}
      assert RateCard.get_pricing_for("bike", 15.1) == {:ok, 27}
      assert RateCard.get_pricing_for("bike", 20) == {:ok, 30}
      assert RateCard.get_pricing_for("bike", 100) == {:ok, 30}
    end

    test "vehicle bike returns correct price" do
      assert RateCard.get_pricing_for("car", "string") == {:error, :invalid_distance}
      assert RateCard.get_pricing_for("car", -0.1) == {:error, :invalid_distance}
      assert RateCard.get_pricing_for("car", 0.1) == {:ok, 20}
      assert RateCard.get_pricing_for("car", 5.1) == {:ok, 25}
      assert RateCard.get_pricing_for("car", 10.1) == {:ok, 30}
      assert RateCard.get_pricing_for("car", 15.1) == {:ok, 35}
      assert RateCard.get_pricing_for("car", 20) == {:ok, 40}
      assert RateCard.get_pricing_for("car", 100) == {:ok, 40}
    end
  end
end
