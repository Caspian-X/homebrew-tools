class UgoUcliUtools < Formula
  desc "A collection of Go CLI tools"
  homepage "https://github.com/Caspian-X/homebrew-tools"
  version "1.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_arm64.tar.gz"
      sha256 "3f5a6f99e19fcf0d7fc655fe094af9c80f44bb8dcc249efa2d176ef3f6090db0"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_darwin_amd64.tar.gz"
      sha256 "51593383917bff1298a76ac5b55b759d3c8b6c31a3e2ea59b6d47f4c8470e858"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_arm64.tar.gz"
      sha256 "24dbe7f69c8cfdb33275a87be1325be64c1b64673f9b7a79c80285a5ceb7f39a"
    else
      url "https://github.com/Caspian-X/homebrew-tools/releases/download/v1.7.5/go-cli-tools_1.7.5_linux_amd64.tar.gz"
      sha256 "4e27bdc6ffe38c33e2da95f940b1477f867aadccd716e92e7c988e7f8d0aa718"
    end
  end

  def install
    bin.install "check-thumbnails"\n    bin.install "convert-m4a-to-mp3"\n    bin.install "convert-heic-to-jpg"\n    bin.install "date-photos"\n    bin.install "dir-compare"\n    bin.install "normalize-audio"\n    bin.install "remove-duplicate-photos"\n    bin.install "remove-files"\n
  end

  test do
    system "#{bin}/check-thumbnails", "--version"
  end
end
