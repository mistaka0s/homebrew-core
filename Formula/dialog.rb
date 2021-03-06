class Dialog < Formula
  desc "Display user-friendly message boxes from shell scripts"
  homepage "https://invisible-island.net/dialog/"
  url "https://invisible-mirror.net/archives/dialog/dialog-1.3-20190724.tgz"
  sha256 "38c0855b3f59281a44ff15bfa2150070d89daa3a4e2cda1139f6399eeeeca924"

  bottle do
    cellar :any_skip_relocation
    sha256 "42c1283bcba7c5b6453e183ad27e0ca6e0451e327326641aa41b06b9eb184417" => :mojave
    sha256 "b39742f9b80b844e69952c06d3369bbb326ddda6db9b58f1964e86d730643931" => :high_sierra
    sha256 "6c94c691dd2ae702189426d7b920685e93504771027046d5bb2013caef97410e" => :sierra
  end

  uses_from_macos "ncurses"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install-full"
  end

  test do
    system "#{bin}/dialog", "--version"
  end
end
