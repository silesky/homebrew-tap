class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.12"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.0.12/nr-darwin-arm64"
    sha256 "0dbd44c398adf9411e3479aa4b44f56c734c10a772cad12698aef2eee6474fda"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.0.12/nr-darwin-amd64"
    sha256 "b2d75e67f27c7146b9a52e7ecfe758f57395130d0cbd2c0f375e8fc700a4fd24"
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
