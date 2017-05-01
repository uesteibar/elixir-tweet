# ElixirTweet

[playground] Schedule tweets from elixir

## Running locally

Clone the repo
```bash
git clone git@github.com:uesteibar/elixir-tweet.git
```

Install the dependencies
```bash
cd elixir-tweet
mix deps.get
```

copy the `.env` file
```bash
cp .env.sample .env
```
And fill it with your twitter application keys.

You can add the tweets to the [sample](https://github.com/uesteibar/elixir-tweet/blob/master/priv/input/sample.txt) file, separated by a line break.

To run the app
```bash
mix run --no-halt
```
