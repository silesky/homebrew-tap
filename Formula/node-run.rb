class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.10"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.10/nrun-darwin-arm64"
    sha256 "af7f9f65c3f502a5230c2c56f2a41837198f3799f51a464e58f210ebf6585e01"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/silesky/node-run/releases/download/v1.1.10/nrun-darwin-amd64"
    sha256 "1d786dbe95d6aaf38889fcc5982dbb0e849e22ba00109a4a6b9c9cfa4ae366e3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.10/nrun-linux-arm64"
    sha256 "96533ef791c609bdfef06da2fcc93833a9cc4a287226be244fc3beeb92e7ef7f"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.10/nrun-linux-amd64"
    sha256 "9b0066520456b626284ce58d540626dc7e0429523854f370613e2f08b3874867"
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
