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
        sha256 = "fa2f0f6ee9232ef1d92c4edbb25be4baf1d9b3faababb6bdc9b91adb84704505",
        strip_prefix = "xpack-arm-none-eabi-gcc-12.3.1-1.2-linux-x64",
        build_file = Label("//tools/workspace/arm_gcc:package.BUILD"),
    )
