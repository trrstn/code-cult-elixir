# RateCard

Slerp is an ordering platform for merchants that wants their products delivered. We have this thing called rate cards that we use to determine the delivery fee depending on distance and vehicle used.

Update the function get_pricing_for/2 in RateCard module so that it returns an {:ok, price} tuple with the correct price that matches the price matrix below.
Ex: `RateCard.get_pricing_for("bike", 6)` -> `{:ok, 25}`
Notes: negative distances should return an `{:error, :invalid_distance}` tuple
