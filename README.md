# OgEx Demo for 0.1.0

This Phoenix application demonstrates the released `og_ex` package from Hex:

```elixir
{:og_ex, "~> 0.1"}
```

It includes four cards:

- `/` — wide PNG
- `/square` — square PNG with compact Twitter metadata
- `/svg` — wide SVG
- `/square-svg` — square SVG with compact Twitter metadata

No Rust installation is needed on a supported target. During compilation,
`RustlerPrecompiled` downloads the checksum-verified native archive attached to
the OgEx `v0.1.0` GitHub release.

## Run the demo

```bash
mix setup
mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

To verify compilation, controller metadata, and real PNG/SVG image responses:

```bash
mix precommit
```

## Deploy on Render

The included `render.yaml` pins compatible Elixir and Erlang/OTP versions and
configures Render to build a self-contained OTP release.

When creating the service manually instead of using the Blueprint, use:

- Language: `Elixir`
- Build command: `./build.sh`
- Start command: `_build/prod/rel/og_ex_demo/bin/server`
- `ELIXIR_VERSION`: `1.19.5`
- `ERLANG_VERSION`: `28.3`
- `SECRET_KEY_BASE`: a generated secret

The application automatically uses Render's `RENDER_EXTERNAL_HOSTNAME` when
constructing absolute Open Graph image URLs. Set `PHX_HOST` only when using a
custom domain.
