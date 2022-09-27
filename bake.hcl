group "default" {
  targets = [
    "k40_whisperer",
  ]
}

target "k40_whisperer" {
  tags = ["matthewbaggett/k40-whisperer"]
  platforms = [
    "arm64",
    "amd64"
  ]
}