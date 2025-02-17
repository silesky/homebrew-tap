class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.5"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.5/nr-darwin-amd64"
      sha256 "39f9bef055542b46fd408b8827fd8cea56ae58d06bfd48020b7170936fe44764"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.5/nr-darwin-arm64"
      sha256 "40af5dbf30e150b6fce63571bf9cb35a0a7aafcdf6bfa51674a453cff24be962"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.5/nr-linux-amd64"
      sha256 "8eac6b3b14cf547369ff52a8a9c51f83b369fc61927377e3be04a13137be1659"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.5/nr-linux-arm64"
      sha256 "31b63e1ad5d90a4cf85eddb726e6cbe20efba17b2db50cf52bc6a6337c5408cc"
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
