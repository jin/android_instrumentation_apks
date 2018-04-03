java_test(
    name = "instrumentation_test_runner",
    runtime_deps = [":dummy_import"],
    test_class = "com.foo.bar",
    visibility = ["//visibility:public"],
)

java_import(
    name = "dummy_import",
    jars = ["hello-world_deploy.jar"],
)
