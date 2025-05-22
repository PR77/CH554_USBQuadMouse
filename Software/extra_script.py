Import("env")

env.Append(LINKFLAGS=[
    "--xram-loc", 0x0080
])