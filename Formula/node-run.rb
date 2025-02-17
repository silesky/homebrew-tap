class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.8"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.8/nr-darwin-amd64"
      sha256 "8be378735e912b63c6a0f2c18cd8bba32cdadd687e33a02d545cf1131e068e1a"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.8/nr-darwin-arm64"
      sha256 "f80f284e01f03b7b72843d7a221cb5c77642d6def8597d2321ce20da221d2c43"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.8/nr-linux-amd64"
      sha256 "b387bbc1cff5f446bb24c168e8699a216de609c379dd214b239b4b25a83e21e6"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.8/nr-linux-arm64"
      sha256 "1520953d30cbf8729da815d687732820396f78ecb2b50136d895fc917767161d"
    end
  end

  license "MIT"

  def install
    bin.install Dir["nr-*"].first => "nr"
  end

  test do
    system "#{bin}/nr", "--help"
  end
end
