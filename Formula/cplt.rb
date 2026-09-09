class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.09-135410-4222924"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-135410-4222924/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ddf8d0610f41e1310c49820dae3ffdf72c4ecac88600deabd6dea0780fcb7c1c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-135410-4222924/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f8cb4f8c114ff76b25e752ba08427f286460da095a9b3ac94b5d68eebb0a4472"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-135410-4222924/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9e3a21f6b5de1c42edf1e674f1217d3a683d26b69b8c20c4acfd0ecce96a83f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-135410-4222924/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffdff48bd7e4bb45e86f862986f99ccb5b267303413deb66d2befa7282706bd7"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
