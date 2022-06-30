# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Trenchman < Formula
  desc "A standalone nREPL/prepl client written in Go and heavily inspired by Grenchman"
  homepage "https://github.com/athos/trenchman"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/athos/trenchman/releases/download/v0.4.0/trenchman_0.4.0_macos_arm64.tar.gz"
      sha256 "58a58b01ba009df143a5046c013e40cfbeef5d09152f255c18792cb794656b59"

      def install
        bin.install "trench"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/athos/trenchman/releases/download/v0.4.0/trenchman_0.4.0_macos_amd64.tar.gz"
      sha256 "ef35c48772ed28526a123e492c7b57ef61b9c888506d69f1723569742ec4cabc"

      def install
        bin.install "trench"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/athos/trenchman/releases/download/v0.4.0/trenchman_0.4.0_linux_arm64.tar.gz"
      sha256 "15c6c06c425059ce2bf72054942747f2bb88a3b8d494b685952c628a7a1b5af9"

      def install
        bin.install "trench"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/athos/trenchman/releases/download/v0.4.0/trenchman_0.4.0_linux_amd64.tar.gz"
      sha256 "618743b7ccab411ae6e85249691935c8dc9a75f2282d58f433a3ab3200f7feb0"

      def install
        bin.install "trench"
      end
    end
  end

  test do
    system "#{bin}/trench --version"
  end
end
