class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.07.05-061331-66b033a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-061331-66b033a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "952eaea9ecd8abd750a8e6acfca55a307ab8496764ed66081629375ff4d6fa6b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.07.05-061331-66b033a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "940e73f16b8add6c0d6b1c8a38b58880b0a9b6b883438398d0c9622f6dd22a82"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
