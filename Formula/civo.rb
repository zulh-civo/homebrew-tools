# This file was generated by GoReleaser. DO NOT EDIT.
class Civo < Formula
  desc "CLI for managing Civo resources."
  homepage "https://github.com/civo/cli"
  version "0.6.46"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/civo/cli/releases/download/v0.6.46/civo-0.6.46-darwin-amd64.tar.gz"
    sha256 "22f7d8816802a66ec34b6987c4c2aded8bb56e8c444128798cb37e20e9d72a8b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/civo/cli/releases/download/v0.6.46/civo-0.6.46-linux-amd64.tar.gz"
    sha256 "c8aaf0c9f54c824b5937e48fb1b4c677c2a3563b914777d45db8d7d59c506233"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/civo/cli/releases/download/v0.6.46/civo-0.6.46-linux-arm.tar.gz"
    sha256 "9a90b427c82328336c321751f6dc4c33610ab1b77173deaf265d2f3e53b29197"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/civo/cli/releases/download/v0.6.46/civo-0.6.46-linux-arm64.tar.gz"
    sha256 "63f62b1d90e18e90bd8f3e917da31e96eb6dcdbe998d3b2b5455e07e958938cb"
  end

  def install
    bin.install "civo"
  end
end
