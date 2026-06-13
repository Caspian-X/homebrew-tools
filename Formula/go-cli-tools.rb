class GoCliTools < Formula
  desc "A collection of Go CLI tools"
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.1/go-cli-tools_1.8.1_darwin_arm64.tar.gz"
      sha256 "fd3a3c9d4a8efa456ba7f555c4006d328fa95732aa0a3345b709a707ec203788"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.1/go-cli-tools_1.8.1_darwin_amd64.tar.gz"
      sha256 "70062b2f06c4a3482c36b01f632bccd01acb0aeb585aa5274fdf070ad9a26f2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.1/go-cli-tools_1.8.1_linux_arm64.tar.gz"
      sha256 "cc83d20c7d1343e15c15bede1a83570d425306d69ad47df02549571eb8086b50"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.1/go-cli-tools_1.8.1_linux_amd64.tar.gz"
      sha256 "5ee48ec58f3e0484825bf9216c01094429b591148278748949776f27bfd83932"
    end
  end

  def install
    bin.install "check-thumbnails"
    bin.install "convert-m4a-to-mp3"
    bin.install "convert-heic-to-jpg"
    bin.install "date-photos"
    bin.install "dir-compare"
    bin.install "normalize-audio"
    bin.install "remove-duplicate-photos"
    bin.install "remove-files"
    bin.install "trim-video"
  end

  test do
    system "#{bin}/check-thumbnails", "--version"
  end
end
