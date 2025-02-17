class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.7"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.7/nr-darwin-amd64"
      sha256 "be82e30fdcbda1dfc86c3b1ed0a81858d07b009ab8367bc35bf1cf818c215065"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.7/nr-darwin-arm64"
      sha256 "93b4126ec27846d94f04577fe09813f13b3d4381073fd7891d5b172c43678850"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.7/nr-linux-amd64"
      sha256 "5de68e8ab7cf73ecea3b8d0798a7dee23baddc7d641b0f88186eb5292f3305ea"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.7/nr-linux-arm64"
      sha256 "7dae8f959367ffdc5d9688811e42cd20ee8b4ae55b044a9a7a5ea1880d57862a"
    end
  end

  license "MIT"

  def install
    bin.install "nr"
  end

  test do
    system "#{bin}/nr", "--help"
  end
end
