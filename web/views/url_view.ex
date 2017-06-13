defmodule EarlybirdExtractor.UrlView do
  use EarlybirdExtractor.Web, :view

  def render("urlextract.json", %{url: url}) do
    %{url: url}
  end

  def render("url.json", %{url: url}) do
    %{url: url}
  end
end
