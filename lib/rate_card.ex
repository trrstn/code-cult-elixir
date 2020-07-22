defmodule RateCard do

  @bike "bike"
  @car "car"

  def get_pricing_for(vehicle, distance) when is_number(distance) and vehicle in [@car, @bike], do: price_for(vehicle, distance)
  def get_pricing_for(_, _), do: err()

  defp price_for(@bike, distance) do
    cond do
      distance < 0 -> err()
      distance < 5 -> success 15
      distance < 10 -> success 17
      distance < 15 -> success 22
      distance < 20 -> success 27
      distance >= 20 -> success 30
      true -> err()
    end
  end

  defp price_for(@car, distance) do
    cond do
      distance < 0 -> err()
      distance < 5 -> success 20
      distance < 10 -> success 25
      distance < 15 -> success 30
      distance < 20 -> success 35
      distance >= 20 -> success 40
      true -> err()
    end
  end

  defp success(distance), do: {:ok, distance}
  defp err, do: {:error, :invalid_distance}
end
