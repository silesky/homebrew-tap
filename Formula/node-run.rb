class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.0/nr-darwin-arm64"
    sha256 "7d68b1eb2ec64e6e67e7748089034321a64b0a038bfc07e00da1955aa8871fc9"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.0/nr-darwin-amd64"
    sha256 "c561eb2fae396241bf08a0ef52c548895be6cb1bd11cd980bee9163d347e61c6"
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
