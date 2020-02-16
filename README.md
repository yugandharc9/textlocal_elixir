# TextlocalElixir

**This is elixir application to send SMS using https://www.textlocal.in/**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `textlocal_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:textlocal_elixir, "~> 0.1.0"}
  ]
end
```

Specify `api_key` and `sender` in 


```
config :textlocal_elixir, api_key: "APIKEY", sender: "SENDERNAME"

```