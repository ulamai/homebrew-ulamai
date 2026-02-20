class Ulamai < Formula
  desc "Ulam AI prover CLI for Lean 4"
  homepage "https://github.com/ulamai/ulamai"
  url "https://github.com/ulamai/ulamai/archive/refs/tags/v0.1.11.tar.gz"
  sha256 "df61a9732fd7f9b80e13f0139a2885ef1ffede6c038b12f36478316a5ca3550c"
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
