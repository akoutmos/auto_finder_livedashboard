defmodule AutoFinderLivedashboardWeb.UsedCarController do
  use AutoFinderLivedashboardWeb, :controller

  alias AutoFinderLivedashboard.UsedCars

  require Logger

  def index(conn, params) do
    results = UsedCars.get_used_cars(params)

    json(conn, results)
  end
end
