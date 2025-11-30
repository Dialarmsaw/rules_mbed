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

def arm_gcc_repository(name):
    http_archive(
        name = name,
        urls = [
            "https://github.com/xpack-dev-tools/arm-none-eabi-gcc-xpack/releases/download/v12.3.1-1.2/xpack-arm-none-eabi-gcc-12.3.1-1.2-linux-x64.tar.gz",
        ],
        sha256 = "771dfb9d10e7339ac40f3a32be9cd287405c537ca0bf16e1dbf6fa6f1fc1dd2a",
        strip_prefix = "xpack-arm-none-eabi-gcc-12.3.1-1.2-linux-x64",
        build_file = Label("//tools/workspace/arm_gcc:package.BUILD"),
    )
