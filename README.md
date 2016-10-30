# Friends

## TODO

* Setup CircleCI to run test

## WTF

* Still can't compile esqlite

```
==> esqlite (compile)
src/esqlite3.erl:315: type tuple(_) undefined
Compiling src/esqlite3.erl failed:
ERROR: compile failed while processing /Users/tensho/Projects/try-elixir/friends/deps/esqlite: rebar_abort
** (Mix) Could not compile dependency :esqlite, "/Users/tensho/.mix/rebar compile skip_deps=true deps_dir="/Users/tensho/Projects/try-elixir/friends/_build/dev/lib"" command failed. You can recompile this dependency with "mix deps.compile esqlite", update it with "mix deps.update esqlite" or clean it with "mix deps.clean esqlite"
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `friends` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:friends, "~> 0.1.0"}]
    end
    ```

  2. Ensure `friends` is started before your application:

    ```elixir
    def application do
      [applications: [:friends]]
    end
    ```

