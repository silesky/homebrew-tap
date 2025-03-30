class NodeRun < Formula
  desc "node-run (nrun) - An fzf-like npm script runner with monorepo support"
  homepage "https://github.com/silesky/node-run"
  version "v1.1.9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.9/nrun-darwin-arm64"
    sha256 "bf8a262e951ddd386dce8c2558a8686b83d521629fb386cc62785b7561acd262"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/silesky/node-run/releases/download/v1.1.9/nrun-darwin-amd64"
    sha256 "b474dccffde58fd0f9cdab74b6c2a93842cad8e7a2d25f6cb4868b3760df3a3f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.1.9/nrun-linux-arm64"
    sha256 "cb577117cdef332010e0b984f0168f8ce992bb48ad94a55b6e200d4c3100d065"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.1.9/nrun-linux-amd64"
    sha256 "453c4a6318b9191ecbe127205bc9ea81c5391dd8947b4a107bf3134260a38c07"
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
