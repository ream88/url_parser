defmodule UrlParserTest do
  use ExUnit.Case

  @result %{scheme: "http", host: "www.google.com", path: "/"}

  test "it parses a full url" do
    @result = UrlParser.parse("http://www.google.com/")
  end

  test "it parses a url without a path" do
    @result = UrlParser.parse("http://www.google.com")
  end

  test "it parses a url without a scheme" do
    @result = UrlParser.parse("www.google.com/")
  end

  test "it parses a url without a scheme and path" do
    @result = UrlParser.parse("www.google.com")
  end
end
