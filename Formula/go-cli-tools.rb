class UgoUcliUtools < Formula
  desc "A collection of Go CLI tools"
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_arm64.tar.gz"
      sha256 "02af2d501e52937abf20f78e0a7afc85626e316047f5eff112434206ecbe32a4"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_amd64.tar.gz"
      sha256 "bb947a661f7b636a080985db501ff5d4217a9df26a91aa21e31b2cacf6b34fe7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_arm64.tar.gz"
      sha256 "fc5d8c792c6c561f9093363720913a1b9c13608addfb2b6add6c92d04e705313"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_amd64.tar.gz"
      sha256 "6297a288969897ebee87fbb7c1e8f112ca2c07b1fff91c633b1b304b03f2001a"
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
