#!/bin/sh
# Builds index.html (the standalone app) from freedraft.html (the page body, also published as the Claude artifact).
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<style>[hidden]{display:none!important}body{margin:0}</style>\n</head>\n<body>\n'; cat freedraft.html; printf '\n</body>\n</html>\n'; } > index.html
