defmodule PhxPartnerWeb.PartnerController do
  use PhxPartnerWeb, :controller

  alias PhxPartner.Partners

  def list_partners(conn, _params) do
    with partners <- Partners.list_partners() do
      conn
      |> put_status(:ok)
      |> render("show.json", partners: partners)
    end
  end
end
