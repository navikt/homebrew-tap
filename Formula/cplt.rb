class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.22-120403-94261f3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-120403-94261f3/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2a72fb1705653b9a6cc787a5c85591a546c1097ce46e167049945440c60d706e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-120403-94261f3/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4e3393f3773fbe01f74736ef6a46b3d067073cdad4efaef19500e9fb2daa70b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-120403-94261f3/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db9e2412513195f3705e8abdfb41d273b181ef9db3a21329a384310a20781af7"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.22-120403-94261f3/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "028bc26901bfccaffcb1dcba70cdcdc6a07f63e5d98cccd8f06c74b93eba6b84"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
