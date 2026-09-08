class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-074746-4f5caf5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-074746-4f5caf5/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "3a94cef3cf0810b3a10e4b5f25e9bba099f1dbcbd9b995af1949dd68821612ab"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-074746-4f5caf5/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "2fb49d3c5c954a5c37095b6f850184cfb6354a61ece3177e88ed1348161c9849"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-074746-4f5caf5/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c85d54d033aa83be83702de72b79d4ee983dd43113347f90f4e4fd15a8648cf5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-074746-4f5caf5/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67e92025424fed00a0787e4b5220bb712aee8d4c135801162cc0a0e4c00ac699"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
