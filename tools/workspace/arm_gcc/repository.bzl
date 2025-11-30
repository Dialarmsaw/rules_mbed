# -*- python -*-

# Copyright 2023 mjbots Robotic Systems, LLC.  info@mjbots.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


http_archive(
    name = "arm_gcc",
    urls = [
        "https://github.com/xpack-dev-tools/arm-none-eabi-gcc-xpack/releases/download/v12.2.1-1/xpack-arm-none-eabi-gcc-12.2.1-1-linux-x64.tar.gz",
    ],
    sha256 = "7a3171c47b81c14404d5c755b2e8fcf80fcbeb021e8e3dfef3f7c74a61bb8aac",
    strip_prefix = "xpack-arm-none-eabi-gcc-12.2.1-1",
    build_file = Label("//tools/workspace/arm_gcc:package.BUILD"),
)
