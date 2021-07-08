# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Civo < Formula
  desc "CLI for managing Civo resources."
  homepage "https://github.com/civo/cli"
  version "0.7.26"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/civo/cli/releases/download/v0.7.26/civo-0.7.26-darwin-amd64.tar.gz"
      sha256 "7995366b21b1ffed09ece52542ed39c30188c8ec3a7bf8412456ad2cafc1d5fd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/civo/cli/releases/download/v0.7.26/civo-0.7.26-darwin-arm64.tar.gz"
      sha256 "30a036201a57f9a449d62a75147f9fe54bb01d915df8b673cf512a74c4e39ccc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/civo/cli/releases/download/v0.7.26/civo-0.7.26-linux-amd64.tar.gz"
      sha256 "7b4f7c17a15b2eddcd0deae66988730560cb2402aceb4448ce55b7d114abbd76"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/civo/cli/releases/download/v0.7.26/civo-0.7.26-linux-arm.tar.gz"
      sha256 "8112f93cf43d40675a38009860dc10302847faf317aafa3c87c53ff1d4ee2f12"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/civo/cli/releases/download/v0.7.26/civo-0.7.26-linux-arm64.tar.gz"
      sha256 "0021d990d56109465602ce45619e7837cb6029a46d28a90ccc96f4d0e268cba1"
    end
  end

  def install
    bin.install "civo"
  end
end
