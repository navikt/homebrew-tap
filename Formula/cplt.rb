class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.05-190936-31677c6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-190936-31677c6/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "6ecd9d26ece6574c11cd730d7f2ec0089a1d21b903595772f680d957fa5d8d88"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-190936-31677c6/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "82e75d2421fcded98c6e2be493e75f38ac82f81e6b619f5a10e5023f995c22ed"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
