# This file was generated by GoReleaser. DO NOT EDIT.
class Civo < Formula
  desc "CLI for managing Civo resources."
  homepage "https://github.com/civo/cli"
  version "0.6.19"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/civo/cli/releases/download/v0.6.19/civo-0.6.19-darwin-amd64.tar.gz"
    sha256 "e085f7dfc40ef2288e44453dfedf61eaa2f23a32c84b5524b19b360cb8d27c8a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/civo/cli/releases/download/v0.6.19/civo-0.6.19-linux-amd64.tar.gz"
      sha256 "8967f909ccf30fc0f4cfd7bd6854aa9469258ad4a9e9f83dd746c1d4245dff5c"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/civo/cli/releases/download/v0.6.19/civo-0.6.19-linux-arm.tar.gz"
        sha256 "6aa0e9af136793b21281cf376ae84b0b76b36e5d8500a33ab880fcc9d2c133ff"
      end
    end
  end

  def install
    bin.install "civo"
  end
end
