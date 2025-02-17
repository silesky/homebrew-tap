class NodeRun < Formula
  desc "Node Run (nr) - a fzf-like, monorepo-aware tool for easily running npm scripts"
  homepage "https://github.com/silesky/node-run"
  url "https://github.com/silesky/node-run/releases/download/v1.0.2/nr-linux-amd64"
  sha256 "d7d390f2cdb922afd15fba94514a9dd50f2baca941eb9633e075a18fd67d8613"
  license "MIT"

  def install
    bin.install "nr-linux-amd64" => "nr"
  end

  test do
    system "#{bin}/nr", "--help"
  end
end
