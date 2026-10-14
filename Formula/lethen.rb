class Lethen < Formula
  desc "Identify unused code in Swift projects"
  homepage "https://github.com/albovsky/lethen"
  url "https://github.com/albovsky/lethen/releases/download/2026.10.1/lethen-2026.10.1-macos-arm64.zip"
  version "2026.10.1"
  sha256 "44ea41c2075d07226d94496044257950c5034fae423b6423db63b299df47d118"
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
