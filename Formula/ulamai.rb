class Ulamai < Formula
  include Language::Python::Virtualenv

  desc "Ulam AI prover CLI for Lean 4"
  homepage "https://github.com/ulamai/ulamai"
  url "https://github.com/ulamai/ulamai/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "0f835be369bb46b8cb87a8f2f774ec2b8e387fa0420f4d2c9e4e0bc2a048ab16"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ulam", "--help"
  end
end
