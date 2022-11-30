defmodule PhxPartnerWeb.PartnerView do
  use PhxPartnerWeb, :view

  def render("show.json", %{partners: partners}) do
    %{
      message: "List of registered partners",
      partners: partners
    }
  end
end
