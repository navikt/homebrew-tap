class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.09-5019414"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.09-5019414/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7a2d68e73c67ec25b3ddf6eee9ca841b960924615ce0d491734e8dd83b615f96"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.09-5019414/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c54c317fa027f79fdfc5ac69500e488c6f60993d1293e9c16cecbb42f7010a92"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
