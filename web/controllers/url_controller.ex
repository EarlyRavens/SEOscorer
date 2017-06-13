defmodule EarlybirdExtractor.UrlController do
  use EarlybirdExtractor.Web, :controller

  def domextract(conn, %{"business" => business}) do
    response = HTTPotion.get business
    dom = Floki.parse response.body
    render(conn, "urlextract.json", dom: dom)
  end
end
