class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.10-130623-b753762"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-130623-b753762/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2026a8c109885f783e6ba6825f50f0fa8932028b18e9e1d174799ae17060288f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-130623-b753762/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "17b990dabe1acb9a23752b45dc833e64061a320a8490e2fa978e3cbd894932d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-130623-b753762/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ae2617eb93b6b508575bb440a8de352edcdf8b98b74761c26af9c92583203d0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.10-130623-b753762/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b45fcf2bcb6fe55fea6968e3ca7fc2259fc8a724b73fe93710c2a529e1141135"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
