# MIT License
#
# Copyright (c) 2025-2026 Michael S. Klishin and Contributors
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

class Frm < Formula
  desc "RabbitMQ version manager based on generic binary builds"
  homepage "https://github.com/michaelklishin/frm"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaelklishin/frm/releases/download/v0.17.0/frm-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "11049ded4c452548cebc31ac81a86636d0f74bc70e34486691c2813549ad6f47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaelklishin/frm/releases/download/v0.17.0/frm-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5ce752f13d57dd052cc7a7a22e1aeea1b1fd8eb828cee77bc2dd7bcd71c2be6"
    end
    on_intel do
      url "https://github.com/michaelklishin/frm/releases/download/v0.17.0/frm-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec12d9635de741ca98ea595a1a3a7599511e8d62030d8871303f855526276f80"
    end
  end

  def install
    bin.install "frm"
  end

  test do
    system "#{bin}/frm", "help"
  end
end
