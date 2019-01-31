class Graalvm < Formula
  desc "GraalVM: Run Programs Faster Anywhere"
  homepage "https://www.graalvm.org/"
  url "https://github.com/oracle/graal/releases/download/vm-1.0.0-rc11/graalvm-ce-1.0.0-rc11-macos-amd64.tar.gz"
  sha256 "469cf77d5cc6b2000103db8ebb889a7edf6f741f8fb77a169a87420d669da5b7"
  version "1.0.rc11"

  bottle :unneeded

  def install
    mv "Contents/Home/bin/javac", "Contents/Home/bin/graal-javac"
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/Contents/Home/bin/graal-javac"]
    bin.write_exec_script Dir["#{libexec}/Contents/Home/bin/native-image"]
  end

end