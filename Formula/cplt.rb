class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.20-060359-9b4d4f4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-060359-9b4d4f4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "0d6a61dff1e77b0d1ff0d0906e43d308e530954d72c61c2ff41e157ab949198c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.20-060359-9b4d4f4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a4568647a2cb23044f952bb7835c6c0973a39fac265d87d561aaa95ebd0c3e86"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
