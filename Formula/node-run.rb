class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.3/nrun-darwin-arm64"
    sha256 "db7d05da802be20737856e86a3755ca83df36c62069d72ed6ec9e04080f927d9"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.3/nrun-darwin-amd64"
    sha256 "da42754e954b823d10896d6fb937b59687d1b215f46bdd7b5559ba8a2aff566a"
  end

  license "MIT"

  def install
    if Hardware::CPU.arm?
      bin.install "nrun-darwin-arm64" => "nrun"
    else
      bin.install "nrun-darwin-amd64" => "nrun"
    end
  end

  test do
    system "#{bin}/nrun", "--help"
  end
end
