class Ktinit < Formula
  desc "Generating Kt Projects"
  homepage "https://github.com/pallavkothari/ktinit"
  url "https://github.com/pallavkothari/ktinit/releases/download/v1.0/ktinit-0.0.1-SNAPSHOT.zip"
  sha256 "c8ec98ea5fa28fe10f501068a09b321627015a7102ff346b0ab7dd8fece812b5"
  head "https://github.com/pallavkothari/ktinit"

  depends_on "gradle"
  depends_on :java => "1.8+"

  def install
    libexec.install "bin"
    libexec.install "lib"
    bin.install_symlink "#{libexec}/bin/ktinit" => "ktinit"
  end

  test do
    system bin/"ktinit"
  end
end
