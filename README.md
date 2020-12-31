# `act-environment-rust`

A base image for running [Rust](https://www.rust-lang.org/) projects in [`act`](https://github.com/nektos/act).

## Example usage

Create a `.actrc` file in the root of your project repo with the following contents:

```
-P ubuntu-latest=kodewerx/act-environment-rust:slim
```

Run your CI workflows:

```bash
$ act
```

## Available images

| Tag      | Base Image    |
|----------|---------------|
| `slim`   | `rust:slim`   |
| `latest` | `rust:latest` |

## Building

If you want to build the images locally:

```bash
$ for tag in 'slim' 'latest' ; do \
    docker build --build-arg FROM_TAG="$tag" -t kodewerx/act-environment-rust:"$tag" . ; \
    done
```
