load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "4f167e5dbb49b082c5b7f49ee688630d69fb96f15c84c448faa2e97a5780dbbc",
    url = "https://github.com/bazelbuild/rules_swift/releases/download/0.24.0/rules_swift.0.24.0.tar.gz",
)

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

new_git_repository(
    name = "SwiftAlgorithms",
    build_file = "swift-algorithms.BUILD",
    commit = "da475ea9af0052b65f9958dbc5d33a2c40c8ec23",
    remote = "https://github.com/apple/swift-algorithms.git",
    shallow_since = "1611850089 -0600",
)

new_git_repository(
    name = "SwiftNumerics",
    build_file = "swift-numerics.BUILD",
    commit = "4a2cbc186b1f8cbbc1ace12cef43d65784b2559e",
    remote = "https://github.com/apple/swift-numerics.git",
    shallow_since = "1605460976 -0500",
)
