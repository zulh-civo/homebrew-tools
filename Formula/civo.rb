# This file was generated by GoReleaser. DO NOT EDIT.
class Civo < Formula
  desc "CLI for managing Civo resources."
  homepage "https://github.com/civo/cli"
  version "0.6.43"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/civo/cli/releases/download/v0.6.43/civo-0.6.43-darwin-amd64.tar.gz"
    sha256 "7374780b4483675d682e27ea690aa0575941d12595d65e9ce7287fca4fa5e4c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/civo/cli/releases/download/v0.6.43/civo-0.6.43-linux-amd64.tar.gz"
    sha256 "7e86f37f9b7c0a163fec43c38c6129c5d56c7c28886fc116871ea00d6a00b345"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/civo/cli/releases/download/v0.6.43/civo-0.6.43-linux-arm.tar.gz"
    sha256 "ec09ba3ccb036df9683fa33e34a2a6f815ba5f316e969758c4479f4706af0ae8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/civo/cli/releases/download/v0.6.43/civo-0.6.43-linux-arm64.tar.gz"
    sha256 "5c40818303f13359e6ae41350f1c41c13915fc369ff711b639404d033874d737"
  end

  def install
    bin.install "civo"
  end
end
