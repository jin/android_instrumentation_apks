def _impl(ctx):
    return [
        AndroidInstrumentationInfo(
            instrumentation_apk = ctx.file.instrumentation_apk,
            target_apk = ctx.file.target_apk,
        )
    ]

android_instrumentation_apks = rule(
    implementation=_impl,
    attrs = {
        "instrumentation_apk": attr.label(
            allow_single_file=True,
            mandatory=True
        ),
        "target_apk": attr.label(
            allow_single_file=True,
            mandatory=True
        ),
    },
)
