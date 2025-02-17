class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.13"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.0.13/nr-darwin-arm64"
    sha256 "71439e2c106ec3769bbd686b43520a5ee9db7ae74920338e0e0bad207f61c0e4"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.0.13/nr-darwin-amd64"
    sha256 "8dbe496023fb0149edfc140633426f78ea6e7afb568f2fb5d624e29f67ea25c4"
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
