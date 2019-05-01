# Running awscli in a Docker container
## Setup
```bash
$ export API_TOKEN=123456789abcdefg
$ build.sh rebuild
```

Put this in `.bashrc` or `.zshrc` to run almost natively
```bash
aws(){
    docker run -it --rm \
        -v "${HOME}/.aws:/root/.aws" \
        --log-driver none \
        --name aws \
        aws-cli "$@"
}
```

## Usage
This will use the `~/.aws/config` file for credentials. So either place them in your home dir
or configure via `aws`
```bash
 $ aws configure
```

