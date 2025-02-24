class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.2/nr-darwin-arm64"
    sha256 "f6708ffbca540036604c7d0036b3a35f14808629060fc867e313ff852ece4060"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.2/nr-darwin-amd64"
    sha256 "817bb5b3a26bf2f21a410897597f01f5f0f8fe9e01f2aec65182c56093677279"
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
