class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.7/nrun-darwin-arm64"
    sha256 "813d22f1ab2c3c0c28593d9d1ae000bf409e4849c03d9b46cc0420a3ca4586f9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/silesky/node-run/releases/download/v1.1.7/nrun-darwin-amd64"
    sha256 "6fa4b1dff58521a9401b2e55723f97d15236269f76f13b5e20bde8fd4af11516"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.7/nrun-linux-arm64"
    sha256 "39912e6b90f315daeacf5f9896296cc22bd1e5499007c8a54b5fc767cef4bf3e"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.7/nrun-linux-amd64"
    sha256 "2371ea5f33aac506764093756a8488c795c02f5e2fd5d3a5e965153e62bb722c"
  end

  license "MIT"

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "nrun-darwin-arm64" => "nrun"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "nrun-darwin-amd64" => "nrun"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "nrun-linux-arm64" => "nrun"
    else
      bin.install "nrun-linux-amd64" => "nrun"
    end
  end

  test do
    system "#{bin}/nrun", "--help"
  end
end
