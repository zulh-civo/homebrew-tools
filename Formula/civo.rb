# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Civo < Formula
  desc "CLI for managing Civo resources."
  homepage "https://github.com/civo/cli"
  version "0.7.29"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/civo/cli/releases/download/v0.7.29/civo-0.7.29-darwin-amd64.tar.gz"
      sha256 "707ebce2c3aba80e5496439c3c9d48535ff372d1c736121ccdddaa990a5f4a6e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/civo/cli/releases/download/v0.7.29/civo-0.7.29-darwin-arm64.tar.gz"
      sha256 "5be7c503d9af150bf771563a1e813ba32c7692806e3784753ffff4af9798f2a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/civo/cli/releases/download/v0.7.29/civo-0.7.29-linux-amd64.tar.gz"
      sha256 "ad9721f97e46d4398b6165fbb41fdccd926042592f2bb805ee0aa48fe5f1432b"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/civo/cli/releases/download/v0.7.29/civo-0.7.29-linux-arm.tar.gz"
      sha256 "eb14b32ae1a05110afbbbc63d46f75d59548a82d9c4120ef93fb26a9ce8c6961"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/civo/cli/releases/download/v0.7.29/civo-0.7.29-linux-arm64.tar.gz"
      sha256 "729c05f68d4d975cd6bd74c0b95b2b23ee68840931932de13410250046da085a"
    end
  end

  def install
    bin.install "civo"
  end
end
