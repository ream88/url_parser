defmodule UrlParser do
  def parse(url) when is_binary(url), do: url |> URI.parse() |> parse
  def parse(%URI{scheme: nil} = url), do: parse("http://#{url}")
  def parse(%URI{path: nil} = url), do: parse("#{url}/")
  def parse(url), do: url
end
