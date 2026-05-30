class GoCliTools < Formula
  desc "A collection of Go CLI tools"
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.0/go-cli-tools_1.8.0_darwin_arm64.tar.gz"
      sha256 "7cbcd3f9fa23a7fb4e1604f2982025c35d4169bd18153badabdeee32536fb89c"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.0/go-cli-tools_1.8.0_darwin_amd64.tar.gz"
      sha256 "66ba641a6f847f30970d5b23653cde72eed6d8d00e66e615c7d429e496b323af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.0/go-cli-tools_1.8.0_linux_arm64.tar.gz"
      sha256 "f1c76832ce5b432d6241d0a983bd7055b0b3bd7034cdcd1f73b3086ef363c070"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.8.0/go-cli-tools_1.8.0_linux_amd64.tar.gz"
      sha256 "a523dad4af865be67a240a419a7413e8ab59e473bc130c69cd5b40a06168065c"
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
