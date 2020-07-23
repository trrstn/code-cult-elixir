defmodule RateCard do
  def get_pricing_for(vehicle, distance) when is_number(distance) do
    case vehicle do
      "car" -> get_car_pricing(distance)
      "bike" -> get_bike_pricing(distance)
      _ -> {:error, :invalid_vehicle}
    end
  end

  def get_price_for(_vehicle, _distance), do: {:error, :invalid_distance}

  defp get_car_pricing(distance) do
    case distance do
      distance when distance >= 20 -> {:ok, 40}
      distance when distance >= 15 -> {:ok, 35}
      distance when distance >= 10 -> {:ok, 30}
      distance when distance >= 5 -> {:ok, 25}
      distance when distance >= 0 -> {:ok, 20}
      _ -> {:error, :invalid_distance}
    end
  end

  defp get_bike_pricing(distance) do
    case distance do
      distance when distance >= 20 -> {:ok, 30}
      distance when distance >= 15 -> {:ok, 27}
      distance when distance >= 10 -> {:ok, 22}
      distance when distance >= 5 -> {:ok, 17}
      distance when distance >= 0 -> {:ok, 15}
      _ -> {:error, :invalid_distance}
    end
  end
end
