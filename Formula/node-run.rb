class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.8/nrun-darwin-arm64"
    sha256 "dfce849d82864bc44ed7c6cbbbc2c3973bf1e764bd4627bf670ea4777a638f78"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/silesky/node-run/releases/download/v1.1.8/nrun-darwin-amd64"
    sha256 "5855a33a0b7e7171c758ff5a7721e03c7e962968b4da51cea4fc7e1974a8cc8a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.8/nrun-linux-arm64"
    sha256 "317a0381ec042ccf8923426edcad4d41330b0b26189f4f2cbe085457e4bf7d4f"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.8/nrun-linux-amd64"
    sha256 "11c38d0190808d4f028d0549cc40e8fa2148963745dde5b7f06c62f1da3ad182"
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
