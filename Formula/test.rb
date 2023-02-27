# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Test < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://example.com/"
  version "0.1.3"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.mycompany.com/shanshanying/test/releases/download/v0.1.3/test_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "09eef28ea9148c7f7f5634834d9f42a3a76c8cff42597c96a66d2f8b410ed3cd"

      def install
        bin.install "main"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.mycompany.com/shanshanying/test/releases/download/v0.1.3/test_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "58a0b3bf44153dc5882a7508c7673f9e1c97352d1cd0baec08a86afd20824caf"

      def install
        bin.install "main"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.mycompany.com/shanshanying/test/releases/download/v0.1.3/test_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "dd5633c05523d0e3eefec096f89e9772b459510c730bdb37910477f88b4aa3a8"

      def install
        bin.install "main"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.mycompany.com/shanshanying/test/releases/download/v0.1.3/test_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7dd23b991345db76a0dfe56986ed9a533e23007f62f4a04f8c4ace4a3c5ab6af"

      def install
        bin.install "main"
      end
    end
  end

  conflicts_with "svn"

  def caveats
    <<~EOS
      How to use this binary
    EOS
  end
end
