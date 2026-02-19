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
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaelklishin/frm/releases/download/v0.20.0/frm-0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "b532bedd6255bf0688bfd296eeff44edd6cfeb0282820282210060ba63957dd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaelklishin/frm/releases/download/v0.20.0/frm-0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0358861966687cf00222c5dfb20a46d51b35a38a15cfed8b859106bd94d1e35b"
    end
    on_intel do
      url "https://github.com/michaelklishin/frm/releases/download/v0.20.0/frm-0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9945caf073e31423d29c0dadceda357549a88788e39a1ee2fe229e25b7f27d5"
    end
  end

  def install
    bin.install "frm"
  end

  test do
    system "#{bin}/frm", "--version"
  end
end
