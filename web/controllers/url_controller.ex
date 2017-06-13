defmodule EarlybirdExtractor.UrlController do
  use EarlybirdExtractor.Web, :controller

  def urlextract(conn, %{"business" => business}) do
    response = HTTPotion.get business
    url = Floki.find(response.body, ".biz-website a") |> Floki.text()
    render(conn, "urlextract.json", url: url)
  end
end
