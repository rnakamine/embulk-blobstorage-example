# embulk-blobstorage-sample

This repository is for verification when using the input-azure_blob_storage plugin with embulk.

## Usage

### Build
```
docker build . -t embulk-blob
```

### Run
```
docker run --rm -t embulk-blob -e ACCOUNT_NAME=<your account name> -e ACCOUNT_KEY=<your account key>
```
