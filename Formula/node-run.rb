class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.5/nrun-darwin-arm64"
    sha256 "cf5007609fc03a87eac636a7fa01baa7e2e5531228a6066ebb991e2a641a7545"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/silesky/node-run/releases/download/v1.1.5/nrun-darwin-amd64"
    sha256 "bfeb03ee1d50f2f6c27c7da1c5c2ef199858570eb7ac3ac72c009eed035d5619"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.5/nrun-linux-arm64"
    sha256 "f7f5631b78e2c0c6823cee2f5bd0151b0e0cf6b3595ec92be92657d9dabcd71d"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.5/nrun-linux-amd64"
    sha256 "28b5eccbba87ab9252bef73c08b817ec43254c90799100cf2fd5273f1dd62e0c"
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
