docker run \
  -it \
  --rm \
  -v $(pwd):/app \
  -w /app \
  rvion/remify-builder \
  go build