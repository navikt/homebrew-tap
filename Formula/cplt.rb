class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-070503-222c870"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-070503-222c870/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "c275dd3204e599b8f3486a56e9703ed0538426e0910ab5dd3c1252ccec3531b3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-070503-222c870/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c49ce47d9308a9dfb88115511cfa70226eb4272e0d58bea511e79749ef6f5402"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-070503-222c870/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37fb61b285404189295260eb66fb9f2aa3573638dbec5ce92feaed65e7e62f8d"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-070503-222c870/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "347811920f6533e461407563a8945a2768c90442c0de9fe47c1049755f283ea3"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
