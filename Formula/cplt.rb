class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.22-132645-ea4cdef"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.22-132645-ea4cdef/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "028cc8a16c15fdad4363eed5d15ded8d5f24d094f7c697028da39d4777e44dae"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.22-132645-ea4cdef/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "67d66bb765ce6103cdfaa7b20fb6eae8c5694e08c4a5762833b1f7c70db2ed3c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
