class Simpleocr < Formula
  desc "macOS OCR CLI using Apple Vision for image-to-text workflows in local AI pipelines"
  homepage "https://github.com/tobilg/simpleocr"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tobilg/simpleocr/releases/download/v#{version}/simpleocr-macos-arm64.tar.gz"
      sha256 "49190d37e417635cb80cba7834b98d8038c631d384f4f4bbc730dcce16bd6cca"
    end
  end

  def install
    bin.install "simpleocr"
  end

  test do
    assert_match "simpleocr", shell_output("#{bin}/simpleocr --version")
  end
end
