class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.27-183256-be15028"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-183256-be15028/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "65d2e39fa80f0c59c041466aa5a8cf8a1394bfdfeb500608487b10cede6c965e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-183256-be15028/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a4f109f6ba08cff9583beb859fbc8ef44be5f9bd253e461e1864ba2267e1db7a"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
