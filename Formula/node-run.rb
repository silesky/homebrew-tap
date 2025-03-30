class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.6/nrun-darwin-arm64"
    sha256 "b9a96d8b15369fcdbadedc1502e15fff33643771a3a34ff0728666f73cfe1c66"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/silesky/node-run/releases/download/v1.1.6/nrun-darwin-amd64"
    sha256 "09f79c81a47a6b6c7d8bcdc2908d2244d75ca27e67fdf3375699de32aa69619e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.6/nrun-linux-arm64"
    sha256 "b8e9592ff69605fdd93287ccde2f39abd94177929ac4763579b3414b4a82df36"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.6/nrun-linux-amd64"
    sha256 "09fcaaebbb2a3f88fd95bf29d8157e8c6e1c7fbe891da40929b6814c72763f60"
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
