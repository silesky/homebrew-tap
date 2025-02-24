class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.1/nr-darwin-arm64"
    sha256 "6623c893bb310103aa916baab0052030d3ee72ab1acdcf7e3c81e5e90398922e"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.1/nr-darwin-amd64"
    sha256 "547ccddcf7e2964a6637423bb6f8863f94d3c12b32338bdd980ded0b0fd7f9ca"
  end

  license "MIT"

  def install
    if Hardware::CPU.arm?
      bin.install "nr-darwin-arm64" => "nr"
    else
      bin.install "nr-darwin-amd64" => "nr"
    end
  end

  test do
    system "#{bin}/nr", "--help"
  end
end
