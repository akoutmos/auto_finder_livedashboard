base_url = "http://localhost:4000/api/used_cars"
wait_time_per_query_ms = 100
total_requests = 100

:ok = :inets.start()

Enum.each(1..total_requests, fn count ->
  random_num = :rand.uniform(10)

  url =
    cond do
      random_num <= 5 ->
        "#{base_url}?make=ferrari"

      random_num <= 7 ->
        "#{base_url}?model=F8"

      random_num == 8 ->
        "#{base_url}?min_year=1990"

      random_num == 9 ->
        "#{base_url}?max_price=200000"

      true ->
        "#{base_url}?max_mileage=50000"
    end

  :httpc.request(:get, {String.to_charlist(url), []}, [], [])

  if rem(count, 10) == 0, do: IO.puts("Completed #{count} requests")

  :timer.sleep(wait_time_per_query_ms)
end)
