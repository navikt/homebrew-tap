class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.06.02-085038-44bb03f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.06.02-085038-44bb03f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ba74d52bc7a81f5386ecefc5bc7c6bf3814a34139bde6e1410cddbf91662781a"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.06.02-085038-44bb03f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "52e392300fceda6fec25a18ffc2e9595326524084d09590490de863d3e1ed53e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
