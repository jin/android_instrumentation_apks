Prototype of a rule to import apks directly into `android_instrumentation_test`

`bazel-dev build --nobuild :my_test`

Tentative rule class and API design:

```
android_instrumentation_test(
    name = "my_test",
    target_device = ":device",
    test_app = ":apks",
)

android_instrumentation_apks(
    name = "apks",
    instrumentation_apk = "test.apk",
    target_apk = "app.apk",
)
```

Requires `android_instrumentation_test.test_app` change to accept any rule that
provides AndroidInstrumentationInfo, instead of just `android_binary`.
