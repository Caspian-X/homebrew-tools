class GoCliTools < Formula
  desc "A collection of Go CLI tools"
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_arm64.tar.gz"
      sha256 "7c39ad0c7922667cbd10851bb014c62c0c4b1cd0558cc8e1af84226eaf4f65d1"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_amd64.tar.gz"
      sha256 "b5a449460ceca23dae9f9b9319be8745bacf6cf2e6a20596b7422b1d88d752be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_arm64.tar.gz"
      sha256 "bd5907000d319c7b6ce5c5cd89116bdd954fe2836602e70e791c7f9c373789f8"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_amd64.tar.gz"
      sha256 "8100b457fd56458aba11415e0561bebc88f1b4d706b90559cea8e7b8c93e35e4"
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
