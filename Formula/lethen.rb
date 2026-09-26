class Lethen < Formula
  desc "Identify unused code in Swift projects"
  homepage "https://github.com/albovsky/lethen"
  url "https://github.com/albovsky/lethen/releases/download/3.9.0/lethen-3.9.0-macos-arm64.zip"
  version "3.9.0"
  sha256 "e9a9e97185dd240e191b14b081e5c6f5111bdfd58c10c34a65eaa900f3d24cfb"
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
