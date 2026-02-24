class Ulamai < Formula
  include Language::Python::Virtualenv

  desc "Ulam AI prover CLI for Lean 4"
  homepage "https://github.com/ulamai/ulamai"
  url "https://github.com/ulamai/ulamai/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "7f8f1e1ef377132a50df6cc6c158aaa34251c38c50e3cddaedef75c47f3db508"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ulam", "--help"
  end
end
