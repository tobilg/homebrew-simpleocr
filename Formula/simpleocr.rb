class Simpleocr < Formula
  desc "macOS OCR CLI using Apple Vision for image-to-text workflows in local AI pipelines"
  homepage "https://github.com/tobilg/simpleocr"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tobilg/simpleocr/releases/download/v#{version}/simpleocr-macos-arm64.tar.gz"
      sha256 "29968b00adf41da1bc43feb902ff46c11b90235e73c4ca0b8359a9de12d02d5b"
    end
  end

  def install
    bin.install "simpleocr"
  end

  test do
    assert_match "simpleocr", shell_output("#{bin}/simpleocr --version")
  end
end
