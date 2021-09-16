This is a sample project to reproduce the issue reported in https://github.com/micrometer-metrics/micrometer/issues/2776.

### Reproduce
You need JDK 11+ to compile the application.
You need Docker installed or an alpine environment to run the application.

Starting up the application in an alpine environment is enough to reproduce it.

As a convenience, you can use the `run.sh` script to build the project and run it in an alpine Docker container.

You should see the failure on startup:

```
#
# A fatal error has been detected by the Java Runtime Environment:
#
#  SIGSEGV (0xb) at pc=0x000000000000401e, pid=1, tid=7
#
# JRE version: OpenJDK Runtime Environment Zulu11.50+19-CA (11.0.12+7) (build 11.0.12+7-LTS)
# Java VM: OpenJDK 64-Bit Server VM Zulu11.50+19-CA (11.0.12+7-LTS, mixed mode, tiered, compressed oops, g1 gc, linux-amd64)
```

If you want to enter a shell in the container instead and run the `java` command yourself, you can use the `enterContainer.sh` script instead.
