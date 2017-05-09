# 🐋 rouge-tester

Simple tool to create a Docker image with [Jekyll](https://github.com/jekyll/jekyll) installed and basic settings to enable the `tonic_js` lexer in our fork of [rouge](https://github.com/pouwerkerk/rouge).

## Instructions

1. Clone repo locally.
2. Build Docker image by issuing `docker build --rm -t rouge-tester .` from that directory in a shell that can connect to a running Docker daemon.
3. Launch Docker container by issuing `docker run -d --net host rouge-tester`.
4. Navigate to `http://localhost:4000` and click on the demo blog post.

docker build --rm -t rouge-tester .
docker run -it --net host rouge-tester bash


root@ubuntu:/gems# ls
kramdown  rouge


JavaScript disabled


Add tonic support
===

Hello

I have added Tonic lexer, where the user can select the Node version to get a runnable snippit. It falls back to use the JavaScript lexer if Tonic isn't available.

