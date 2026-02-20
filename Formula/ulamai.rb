class Ulamai < Formula
  include Language::Python::Virtualenv

  desc "Ulam AI prover CLI for Lean 4"
  homepage "https://github.com/ulamai/ulamai"
  url "https://github.com/ulamai/ulamai/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "c675c05e03181f3efc543bdecca4ff9eab539a8203beea3ebad6217fc519e816"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ulam", "--help"
  end
end
