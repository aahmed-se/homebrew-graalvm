class Graalvm < Formula
  desc "GraalVM: Run Programs Faster Anywhere"
  homepage "https://www.graalvm.org/"
  url "https://github.com/oracle/graal/releases/download/vm-1.0.0-rc11/graalvm-ce-1.0.0-rc11-macos-amd64.tar.gz"
  sha256 "469cf77d5cc6b2000103db8ebb889a7edf6f741f8fb77a169a87420d669da5b7"
  version "1.0.rc11"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/Contents/Home/bin/javac" => "gjavac"
    bin.install_symlink "#{libexec}/Contents/Home/bin/java" => "gjava"
    bin.install_symlink "#{libexec}/Contents/Home/bin/native-image" => "gnative-image"
  end
end