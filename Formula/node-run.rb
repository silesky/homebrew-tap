class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.14"

  if Hardware::CPU.arm?
    url "https://github.com/silesky/node-run/releases/download/v1.0.14/nr-darwin-arm64"
    sha256 "5c9e26353d9c4806a7d3393e96bd81a9f0358d61a6da5fe4858b26eede7bd437"
  else
    url "https://github.com/silesky/node-run/releases/download/v1.0.14/nr-darwin-amd64"
    sha256 "6402b868a4dce8421bfefa21f2ec081e3cb1979e8ea5ace219bd26796073bda4"
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
