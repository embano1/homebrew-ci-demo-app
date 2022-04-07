# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DemoApp < Formula
  desc "Go CI Demo App showcasing goreleaser, Github Actions and ko."
  homepage "https://github.com/embano1/ci-demo-app/blob/master/README.md"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.4/demo-app_Darwin_arm64.tar.gz"
      sha256 "a27704074a8205901db885f07caad6e5cecac74d358481f43f4526c720299398"

      def install
        bin.install "demo-app"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.4/demo-app_Darwin_x86_64.tar.gz"
      sha256 "eaf159505a2d7d89261589a0bdf5982509d4a18b212beeb59303d3730d6ed7dd"

      def install
        bin.install "demo-app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.4/demo-app_Linux_x86_64.tar.gz"
      sha256 "676af1f447f80e682c2a1e838a8b586663da5bd2672bcdac08a37adce33d962d"

      def install
        bin.install "demo-app"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.4/demo-app_Linux_armv6.tar.gz"
      sha256 "5c0dc61587b8e35d5bc6c3a86c54d0bd0d941e51307fb968caf47f4506d43ff6"

      def install
        bin.install "demo-app"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.4/demo-app_Linux_arm64.tar.gz"
      sha256 "f02f8d409fda4cec9bccfc8c16315415e98c8f29a3b58ead71d162efedd8361d"

      def install
        bin.install "demo-app"
      end
    end
  end

  test do
    system "#{bin}/demo-app version"
  end
end
