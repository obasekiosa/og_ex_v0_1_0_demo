# OgEx Demo for 0.1.0

This Phoenix application demonstrates the released `og_ex` package from Hex:

```elixir
{:og_ex, "~> 0.1"}
```

It uses SQLite and includes four cards:

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

To verify compilation, SQLite migrations, controller metadata, and real PNG/SVG
image responses:

```bash
mix precommit
```
