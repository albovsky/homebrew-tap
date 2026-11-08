class Lethen < Formula
  desc "Identify unused code in Swift projects"
  homepage "https://github.com/albovsky/lethen"
  url "https://github.com/albovsky/lethen/releases/download/2026.11.1/lethen-2026.11.1-macos-arm64.zip"
  version "2026.11.1"
  sha256 "8dadaafb5766b9c3d297681e3e6b26b9dd974357855e4e9188e0c22d5381bf88"
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
