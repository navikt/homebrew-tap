class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.07-090416-1fc3332"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.07-090416-1fc3332/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f11eb99b37e1e3b7fd325b4cd91c9cbf92893daefaf4220070773f45e80303c6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.07-090416-1fc3332/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c8e56d7741bcbae48ef6bb5bc57f769c1647ac97cfc4f60267017a971e36c771"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
