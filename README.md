# CBC Lambda Layer

Installs the [COIN-OR Branch-and-Cut solver](https://github.com/coin-or/Cbc)
bin and lib into an AWS Lambda layer.

Thanks to [glpk-lambda-layer](https://github.com/tomharvey/glpk-lambda-layer/) for the general structure.

## Usage

To use this layer in your lambda function we must first deploy it to AWS. These steps require Docker be installed on your workstation.

The `build.sh` script will create a ZIP file which will become our layer.

The `publish.sh` script will then publish this as a layer to all regions.

You will then be able to attach this layer to your function; through the Lambda Console or AWS CLI.
