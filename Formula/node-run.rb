class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.11"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.0.11/nr-darwin-arm64"
    sha256 "6acd1b06171a2f7ee3846f1a16bf971594534c5b36c70d55cca0d17a931471e5"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.0.11/nr-darwin-amd64"
    sha256 "04498009a137f7c8ff401346e86bbc4e8f1d935a5a2518c60991482a8d093612"
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
