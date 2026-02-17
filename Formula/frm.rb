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
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/michaelklishin/frm/releases/download/v0.19.0/frm-0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "938cc30a2c22937baa465b849f38851f588950cc3ec8ac88a201ab33ea2f7380"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/michaelklishin/frm/releases/download/v0.19.0/frm-0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d58971fd07503631278886c575367cf80d445a27f2b0c09fd0a76014eeee7656"
    else
      url "https://github.com/michaelklishin/frm/releases/download/v0.19.0/frm-0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2933695ea9daee9adabd4ef6a57ec82e5f74acc27bb9bac30f2ce538ed4f9b7c"
    end
  end

  def install
    bin.install "frm"
  end

  test do
    system "#{bin}/frm", "--version"
  end
end
