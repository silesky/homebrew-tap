class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  url "https://github.com/silesky/node-run/releases/download/${{ env.VERSION }}/nr-linux-amd64"
  sha256 "${{ env.SHA256_AMD64 }}"
  license "MIT"

  def install
    bin.install "nr-linux-amd64" => "nr"
  end

  test do
    system "#{bin}/nr", "--help"
  end
end

