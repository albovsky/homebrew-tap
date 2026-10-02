class Lethen < Formula
  desc "Identify unused code in Swift projects"
  homepage "https://github.com/albovsky/lethen"
  url "https://github.com/albovsky/lethen/releases/download/3.10.0/lethen-3.10.0-macos-arm64.zip"
  version "3.10.0"
  sha256 "ff66cc7d4924490c609cafbf6b0f5dbfd7331e31be0798855c9b1f7ceefde683"
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
