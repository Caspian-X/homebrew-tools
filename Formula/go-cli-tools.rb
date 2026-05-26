class GoCliTools < Formula
  desc "A collection of Go CLI tools"
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.6/go-cli-tools_1.7.6_darwin_arm64.tar.gz"
      sha256 "09307ca6f8081079bf18c19249893cabd9c82e4e44d8246c307ba229325d0cac"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.6/go-cli-tools_1.7.6_darwin_amd64.tar.gz"
      sha256 "dc8d060275e1171737acb58f864c97df349385993a75a40d31e7a5d4490209fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.6/go-cli-tools_1.7.6_linux_arm64.tar.gz"
      sha256 "7f17cada96f5cfff1ced441f59e66cd0cb2c70db219c117757a0c1803270c817"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.6/go-cli-tools_1.7.6_linux_amd64.tar.gz"
      sha256 "4efce93daffa1664e76d30233fbd43ab5ef213839b59bf81e34cada264cdc987"
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
  end

  test do
    system "#{bin}/check-thumbnails", "--version"
  end
end
