# RateCard

Slerp is an ordering platform for merchants that wants their products delivered. We have this thing called rate cards that we use to determine the delivery fee depending on distance and vehicle used.

Update the function get_pricing_for/2 in RateCard module so that it returns an {:ok, price} tuple with the correct price that matches the price matrix below.

Ex: `RateCard.get_pricing_for("bike", 6)` -> `{:ok, 25}`
Notes: negative distances should return an `{:error, :invalid_distance}` tuple

### Price Matrix

 "" | < 5 | < 10 | < 15 | < 20 | distance >=20
-- | --- |  --- |  --- |  --- |  ----------- 
bike | 15 | 17 | 22 | 27 | 30
car | 20 | 25 | 30 | 35 | 40
