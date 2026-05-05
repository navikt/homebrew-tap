class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.05-181320-62f7392"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-181320-62f7392/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "5e69b134434c129d70db07a83b41316d3f5df1e990ed0c5febbeacec55cf5dc6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.05-181320-62f7392/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f7d54107437b6272e79c61366eee7a394fc4bccd18cf67438e2f5e660ebec455"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
