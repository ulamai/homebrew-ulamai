class Ulamai < Formula
  include Language::Python::Virtualenv

  desc "Ulam AI prover CLI for Lean 4"
  homepage "https://github.com/ulamai/ulamai"
  url "https://github.com/ulamai/ulamai/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "ddccbbb3c92b7499fa16093a08beb1a35280006cbf53d20ae3512823d36438da"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ulam", "--help"
  end
end
