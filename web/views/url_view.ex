defmodule EarlybirdExtractor.UrlView do
  use EarlybirdExtractor.Web, :view

  def render("domextract.json", %{dom: dom}) do
    %{dom: dom}
  end

  def render("dom.json", %{dom: dom}) do
    %{dom: dom}
  end
end
