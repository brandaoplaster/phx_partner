defmodule PhxPartnerWeb.PartnerController do
  use PhxPartnerWeb, :controller

  alias PhxPartner.Partners

  def upload(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("upload.json", message: "Your file is being processed!")
  end

  def list_partners(conn, _params) do
    with partners <- Partners.list_partners() do
      conn
      |> put_status(:ok)
      |> render("show.json", partners: partners)
    end
  end
end
