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

class RabbitmqLqt < Formula
  desc "CLI tool for parsing, annotating, and querying RabbitMQ log files"
  homepage "https://github.com/michaelklishin/rabbitmq-lqt"
  version "0.22.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/michaelklishin/rabbitmq-lqt/releases/download/v0.22.0/rabbitmq-lqt-0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "3fdf13e97a60455b3d2d3307cbd4d2f412f485d875193db7827f17defc3d6047"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/michaelklishin/rabbitmq-lqt/releases/download/v0.22.0/rabbitmq-lqt-0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f88f4d78ed7d9d74b08dcd61357af920b93511bcdc60b6534647a7e993d74ab4"
    end
    on_intel do
      url "https://github.com/michaelklishin/rabbitmq-lqt/releases/download/v0.22.0/rabbitmq-lqt-0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab6df06970754c3c3603306c634f59878c1486e5d4f056507123799a07f10839"
    end
  end

  def install
    bin.install "rabbitmq-lqt"
  end

  test do
    system "#{bin}/rabbitmq-lqt", "--version"
  end
end
