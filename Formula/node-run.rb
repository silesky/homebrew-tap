class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.10"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.0.10/nr-darwin-amd64"
    sha256 "53476c2bd7c0768e25159e0f9131bf23877c2dbc72fc4598a33271301bcf08fb"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.0.10/nr-darwin-arm64"
    sha256 "e819d1eaa4778a03eab9008f479b9138cd7fc108e27c86d93425eba544f88622"
  end

  license "MIT"

  def install
    bin.install "nr-darwin-#{Hardware::CPU.arch}" => "nr"
    chmod "+x", bin/"nr"
  end

  test do
    system "#{bin}/nr", "--help"
  end
end
