# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoCliTools < Formula
  desc ""
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.0.2"

  on_macos do
    on_intel do
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.0.2/homebrew-tools_Darwin_x86_64.tar.gz"
      sha256 "38a27a2ffd452d0a7dc66d1a3561933f5afe2d7981f66d48a5792de72915f532"

      def install
        bin.install "date-screenshots"
      end
    end
    on_arm do
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.0.2/homebrew-tools_Darwin_arm64.tar.gz"
      sha256 "12ea31d5a40015688aadfea2957654f09d4988611aa5f3beba5cf1469dcf4046"

      def install
        bin.install "date-screenshots"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.0.2/homebrew-tools_Linux_x86_64.tar.gz"
        sha256 "4ac04b2a7159f9fd56d0b5952de9881573a720343a3ac71e4b518b0048fc0a37"

        def install
          bin.install "date-screenshots"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.0.2/homebrew-tools_Linux_arm64.tar.gz"
        sha256 "fbb41e5994accb6d4ea2767513b731cc09384cef4de679c156b746530dce5678"

        def install
          bin.install "date-screenshots"
        end
      end
    end
  end
end
