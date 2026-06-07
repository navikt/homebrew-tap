class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.07-100229-6ba073e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.07-100229-6ba073e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d149b718db450be0ebf3c2945cac08479dcec3c8b8790b6ce4e5c3aebd8fed9e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.07-100229-6ba073e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "77692b1e79f05323166ee879949d4fb7b272ec294b9af2cef5a78abc86e002b6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
