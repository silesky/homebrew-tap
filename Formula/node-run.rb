class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.4/nrun-darwin-arm64"
    sha256 "1d33a98c58522a29f08c59dc3e1bd576847a6e151c10eb671cee907759df3767"
  elif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/silesky/node-run/releases/download/v1.1.4/nrun-darwin-amd64"
    sha256 "e2473869798c9fe9697ac0e525328e8cf95980809ff431ca54311dac8c0ae1fd"
  elif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.4/nrun-linux-arm64"
    sha256 "cd1eb0eab43db220d3f8629c97213aeb7896259d222856b693016522a128282f"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.4/nrun-linux-amd64"
    sha256 "3a00c3feae923332b88edd0adf80a8695bfef61a22941972be0b5f10dad9ebba"
  end

  license "MIT"

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "nrun-darwin-arm64" => "nrun"
    elif OS.mac? && Hardware::CPU.intel?
      bin.install "nrun-darwin-amd64" => "nrun"
    elif OS.linux? && Hardware::CPU.arm?
      bin.install "nrun-linux-arm64" => "nrun"
    else
      bin.install "nrun-linux-amd64" => "nrun"
    end
  end

  test do
    system "#{bin}/nrun", "--help"
  end
end
