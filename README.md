# dbank

This is a decentralized application, designed for the internet computer (ICP). 
This application imitates a financial institution in a very crude sense where it generates compund on the assets it has in its possession.
This is based on the Motoko language, which helps in dealing with the ICP.


To learn more you can see the following documentation available online:

- [Quick Start](https://sdk.dfinity.org/docs/quickstart/quickstart-intro.html)
- [SDK Developer Tools](https://sdk.dfinity.org/docs/developers-guide/sdk-guide.html)
- [Motoko Programming Language Guide](https://sdk.dfinity.org/docs/language-guide/motoko.html)
- [Motoko Language Quick Reference](https://sdk.dfinity.org/docs/language-guide/language-manual.html)
- [JavaScript API Reference](https://erxue-5aaaa-aaaab-qaagq-cai.raw.ic0.app)

If you want to start working on the project right away, you might want to try the following commands:

```bash
cd dbank/
dfx help
dfx config --help
```

## Running the project locally

If you want to test the project locally, you can use the following commands:

```bash
# Starts the replica, running in the background
dfx start --background

# Deploys your canisters to the replica and generates your candid interface
dfx deploy
```

Once the job completes, the application will be available at `http://localhost:8000?canisterId={asset_canister_id}`.

Additionally, since there are frontend changes, you can start a development server with

```bash
npm start
```

Which will start a server at `http://localhost:8080`, proxying API requests to the replica at port 8000.
