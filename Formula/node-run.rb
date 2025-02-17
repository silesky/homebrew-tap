class NodeRun < Formula
  desc "Node-run (nr) - Your task runner"
  homepage "https://github.com/silesky/node-run"
  version "v1.0.9"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.9/nr-darwin-amd64"
      sha256 "9e6862546c855b118797fc264c9ce8abea94e1bf1631870d1ceb06263034cc11"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.9/nr-darwin-arm64"
      sha256 "a38edc59c73964e01be6a7d29a3a760e7ff7c207d7a9ccb645f292d5af712c66"
    end
  else
    if Hardware::CPU.intel?
      url "https://github.com/silesky/node-run/releases/download/v1.0.9/nr-linux-amd64"
      sha256 "a261ca1ab64fc7d8445eef81744117a23d837f708f00b35b4d9a8cfc9e5be607"
    else
      url "https://github.com/silesky/node-run/releases/download/v1.0.9/nr-linux-arm64"
      sha256 "1feb84f7aafb0b4c54f0d21c451cf455dfaa3833216960100af8e784e986d4b9"
    end
  end

  license "MIT"

  def install
    bin.install "nr-darwin-#{Hardware::CPU.arch}" => "nr"
    chmod "+x", bin/"nr"
  end

  test do
    system "#{bin}/nr", "--help"
  end
end
