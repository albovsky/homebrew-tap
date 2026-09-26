class Lethen < Formula
  desc "Identify unused code in Swift projects"
  homepage "https://github.com/albovsky/lethen"
  url "https://github.com/albovsky/lethen/releases/download/3.8.1/lethen-3.8.1-macos-arm64.zip"
  version "3.8.1"
  sha256 "6665cf87a8a98c999598902bfc77d2c9ef08b34d7fa7587076de3505bfaad97b"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "lethen"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/lethen version").strip
  end
end
