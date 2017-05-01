defmodule ElixirTweet.FileReader do
  def get_random_tweet(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(
      fn str ->
        length = String.length(str)
        length > 0 and length <= 140
      end
    )
    |> Enum.random()
  end
end
