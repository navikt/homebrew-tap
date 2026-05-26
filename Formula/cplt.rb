class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.26-090605-6bdc09f"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.26-090605-6bdc09f/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "eb8b680f72fb720288fb83aadfa9a5c3ecafcd914c3917a81e666a6401389437"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.26-090605-6bdc09f/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "fc3d4dea6585a5890ebcb6a6a3154b2c7019ece6097ff6fe643749d65f8b1acf"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
