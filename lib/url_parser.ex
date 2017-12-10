defmodule UrlParser do
  def parse(url) when is_binary(url), do: url |> URI.parse() |> parse()
  def parse(%URI{scheme: nil} = url), do: "http://#{url}" |> parse()
  def parse(%URI{path: nil} = url), do: "#{url}/" |> parse()
  def parse(url), do: url
end
