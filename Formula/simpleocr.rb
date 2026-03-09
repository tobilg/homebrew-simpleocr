class Simpleocr < Formula
  desc "macOS OCR CLI using Apple Vision for image-to-text workflows in local AI pipelines"
  homepage "https://github.com/tobilg/simpleocr"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tobilg/simpleocr/releases/download/v#{version}/simpleocr-macos-arm64.tar.gz"
      sha256 "66173f3b91c15b7ac24540472d14bf0273d27940e12e35b62090a593d8369d83"
    end
  end

  def install
    bin.install "simpleocr"
  end

  test do
    assert_match "simpleocr", shell_output("#{bin}/simpleocr --version")
  end
end
