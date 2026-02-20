class Ulamai < Formula
  desc "Ulam AI prover CLI for Lean 4"
  homepage "https://github.com/ulamai/ulamai"
  url "https://github.com/ulamai/ulamai/archive/refs/tags/v0.1.11.tar.gz"
  sha256 "bfbfd401d22a6cef7ab4ea39b3ff48b36205e44305944a40b94c428aff8d16b0"
  license "MIT"

  depends_on "python@3.12"

  def install
    python = Formula["python@3.12"].opt_bin/"python3.12"
    ENV["PIP_DISABLE_PIP_VERSION_CHECK"] = "1"
    ENV["PIP_BREAK_SYSTEM_PACKAGES"] = "1"
    system python, "-m", "pip", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/ulam", "--help"
  end
end
