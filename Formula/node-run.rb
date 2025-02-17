class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.6"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.6/nr-darwin-amd64"
      sha256 "aab34eebed91582d9dd5da04609edba6a175e1edd54cd6409a312e0de9e2349e"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.6/nr-darwin-arm64"
      sha256 "f5e1bc033365cc944180e0f516442ef952fa44dcc4d1f70ff7afc9b938401b18"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.6/nr-linux-amd64"
      sha256 "ebea182196a7de1dc29a01459ada440224c063d9c7a103e79553f4f149b0708b"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.6/nr-linux-arm64"
      sha256 "acb0a2cca44b6137c0bea52a4d94b35d08eb75e64def07dc64a062645808918f"
    end
  end

  license "MIT"

  def install
    bin.install "nr"
  end

  test do
    system "#{bin}/nr", "--help"
  end
end
