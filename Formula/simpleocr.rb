class Simpleocr < Formula
  desc "macOS OCR CLI using Apple Vision for image-to-text workflows in local AI pipelines"
  homepage "https://github.com/tobilg/simpleocr"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tobilg/simpleocr/releases/download/v#{version}/simpleocr-macos-arm64.tar.gz"
      sha256 "1d34d066240daa3bfbb4e16852ae9a753439445b014115b2247baa37d3a58a75"
    end
  end

  def install
    bin.install "simpleocr"
  end

  test do
    assert_match "simpleocr", shell_output("#{bin}/simpleocr --version")
  end
end
