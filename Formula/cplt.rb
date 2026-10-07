class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.07-110830-d7c327c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-110830-d7c327c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "1ac9d2d65cf1decd78e2f9a38c6584771b535670ffa088e5d11143ac5fc1e831"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-110830-d7c327c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "e9e574115995221e7c5b7e560edddc039b1488c24587c7d4d16abe0cc13557a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-110830-d7c327c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ba7fd32d4a8acc24a9fbee0bdcbce9223281b26ccbe541754450ce08d197e29"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.07-110830-d7c327c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40c1efd97adaef8e7807f81ff92aba37620f7a69cef21ef911808b9d909810f3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
