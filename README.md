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

## Setting up your own copy of this repo

You can clone the repo as normal and make sure you have git lfs set up too as that is used for `.rbxm` files.

Once you have your own repo synced to GitHub you then need to set up the environment to keep track of the `UNIVERSE_ID`, `PLACE_ID` and `RBX_API_KEY` values for GitHub Actions.

This is done from the main repo page:

1. Open Settings from the nav bar
2. Open Environments in the side bar
3. New Environment (name it testing) then Configure Environment
4. Scroll down and click 'Add environment secret'
5. Name `RBX_API_KEY`, value is whatever you created in the [Creator Hub](https://create.roblox.com/dashboard/credentials?activeTab=ApiKeysTab) (Note that your api key must have the`universe-places:write` permissions to publish places)
6. 'Add environment variable' for both `UNIVERSE_ID` and `PLACE_ID`

Once this is set up, the deployment action will publish your place automatically when you push to the `main` branch.
