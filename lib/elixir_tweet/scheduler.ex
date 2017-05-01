defmodule ElixirTweet.Scheduler do
  def schedule_file(schedule, file) do
    Quantum.add_job(schedule, fn ->
      ElixirTweet.FileReader.get_random_tweet(file)
      |> ElixirTweet.TweetServer.tweet
    end)
  end
end
