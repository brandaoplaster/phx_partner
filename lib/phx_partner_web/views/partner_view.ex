defmodule PhxPartnerWeb.PartnerView do
  use PhxPartnerWeb, :view

  def render("upload.json", %{message: message}) do
    %{
      message: message
    }
  end

  def render("show.json", %{partners: partners}) do
    %{
      message: "List of registered partners",
      partners: partners
    }
  end
end
