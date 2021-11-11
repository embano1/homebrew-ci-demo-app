# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DemoApp < Formula
  desc "Go CI Demo App showcasing goreleaser, Github Actions and ko."
  homepage "https://github.com/embano1/ci-demo-app/blob/master/README.md"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.3/demo-app_Darwin_x86_64.tar.gz"
      sha256 "d259450ea79004cda85433e22bdd3163b8eb873b23ebc852bdf6b8c043f1275e"

      def install
        bin.install "demo-app"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.3/demo-app_Darwin_arm64.tar.gz"
      sha256 "f01b91ce20e20bb21e3a595a744281bd05cd358c679f8cfbd1dfb5cbb08b7a14"

      def install
        bin.install "demo-app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.3/demo-app_Linux_armv6.tar.gz"
      sha256 "316f30b4b0c4c2cc695195e535bbf9670d005dc6d5808df3608bf5b2bf1fd4f5"

      def install
        bin.install "demo-app"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.3/demo-app_Linux_arm64.tar.gz"
      sha256 "27488a03a9ae3fa82090639dee40bec1b360821ee2d6d5e9be19728439b0e1e8"

      def install
        bin.install "demo-app"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/embano1/ci-demo-app/releases/download/v0.3.3/demo-app_Linux_x86_64.tar.gz"
      sha256 "bbc81c36c60270241d1a8b8d2e973272ee451b394982f23fc0d941fb55241b59"

      def install
        bin.install "demo-app"
      end
    end
  end

  test do
    system "#{bin}/demo-app version"
  end
end
