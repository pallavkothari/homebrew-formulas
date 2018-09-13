class Ktinit < Formula
  desc "Generating Kt Projects"
  homepage "https://github.com/pallavkothari/ktinit"
  url "https://github.com/pallavkothari/ktinit/releases/download/v1.0/ktinit-0.0.1-SNAPSHOT.zip"
  sha256 "d26902732201f1b6111eb7bb0017c9164ef1c41d"
  head "https://github.com/pallavkothari/ktinit"

  def install
    libexec.install "bin"
    libexec.install "lib"
    bin.install_symlink "#{libexec}/bin/ktinit" => "ktinit"
  end

  test do
    system bin/"ktinit"
  end
end
