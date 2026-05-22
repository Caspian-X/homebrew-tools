class UgoUcliUtools < Formula
  desc "A collection of Go CLI tools"
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/go-cli-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_arm64.tar.gz"
      sha256 "f40556e0988507b822d5acda2cd3906139533aac036e3ac51ed74b55fa019423"
    else
      url "https://github.com/Caspian-X/go-cli-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_amd64.tar.gz"
      sha256 "0e4fb52535c47c4c6cc0fcd183de47aa73f97c47429a79e5cb67ebd7613671d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/go-cli-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_arm64.tar.gz"
      sha256 "d400fd4751c488b9c56b6ba531d8b5ebc255d7c060e253923c8a7fd4674f5f3b"
    else
      url "https://github.com/Caspian-X/go-cli-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_amd64.tar.gz"
      sha256 "e2af27b02390c5ae9bef968ef22cde5d9663be313ab1dcd699551263d378762c"
    end
  end

  def install
    bin.install "check-thumbnails"\n    bin.install "convert-m4a-to-mp3"\n    bin.install "convert-heic-to-jpg"\n    bin.install "date-photos"\n    bin.install "dir-compare"\n    bin.install "normalize-audio"\n    bin.install "remove-duplicate-photos"\n    bin.install "remove-files"\n
  end

  test do
    system "#{bin}/check-thumbnails", "--version"
  end
end
