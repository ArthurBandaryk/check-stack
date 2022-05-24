"""Dependency specific initialization."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def deps(repo_mapping = {}):
    maybe(
        http_archive,
        name = "com_github_backward_cpp",
        url = "https://github.com/bombela/backward-cpp/archive/refs/tags/v1.6.tar.gz",
        sha256 = "c654d0923d43f1cea23d086729673498e4741fb2457e806cfaeaea7b20c97c10",
        strip_prefix = "backward-cpp-1.6",
        repo_mapping = repo_mapping,
        build_file = "@com_github_3rdparty_backward_cpp//:BUILD.bazel",
    )

    maybe(
        http_archive,
        name = "com_github_gflags_gflags",
        url = "https://github.com/gflags/gflags/archive/v2.2.2.tar.gz",
        sha256 = "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf",
        strip_prefix = "gflags-2.2.2",
    )

    maybe(
        http_archive,
        name = "com_github_google_glog",
        url = "https://github.com/google/glog/archive/refs/tags/v0.5.0.tar.gz",
        sha256 = "eede71f28371bf39aa69b45de23b329d37214016e2055269b3b5e7cfd40b59f5",
        strip_prefix = "glog-0.5.0",
    )

    maybe(
        http_archive,
        name = "com_github_google_googletest",
        url = "https://github.com/google/googletest/archive/release-1.11.0.tar.gz",
        sha256 = "b4870bf121ff7795ba20d20bcdd8627b8e088f2d1dab299a031c1034eddc93d5",
        strip_prefix = "googletest-release-1.11.0",
    )
