class Simpleocr < Formula
  desc "macOS OCR CLI using Apple Vision for image-to-text workflows in local AI pipelines"
  homepage "https://github.com/tobilg/simpleocr"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tobilg/simpleocr/releases/download/v#{version}/simpleocr-macos-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "simpleocr"
  end

  test do
    assert_match "simpleocr", shell_output("#{bin}/simpleocr --version")
  end
end
