# rojo-testing

A template repo that contains an automatic build and deployment workflow using rojo

## Getting Started

This project requires aftman (or equivalent) to install rojo

## Building / Publishing locally

First you need to get a Roblox Cloud API key. You will also need an existing universe + place to publish to.
You then need to set the corresponding environment variables before running the make commands: `RBX_API_KEY`, `UNIVERSE_ID` and `PLACE_ID`.

To build locally run the following command (outputs to `build/placefile.rbxl` by default)

```bash
make build-place
```

and to publish locally run

```bash
make publish
```
