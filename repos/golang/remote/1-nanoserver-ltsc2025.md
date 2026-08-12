## `golang:1-nanoserver-ltsc2025`

```console
$ docker pull golang@sha256:198385114b03eb3cceece44a7237bb165ad1ad3e33b6dec9e64ef008143514bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `golang:1-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:170470685228c5925e9bc20d4f2fca3a6168ef3941faaa0f923163387f94bd8c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266884770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dab6c98b20d7e766be701b0c63be90c925f587cab6ccd5b036f4d386b38333d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:23:22 GMT
SHELL [cmd /S /C]
# Wed, 12 Aug 2026 18:23:23 GMT
ENV GOPATH=C:\go
# Wed, 12 Aug 2026 18:23:23 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:23:25 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 12 Aug 2026 18:23:25 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:23:26 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 12 Aug 2026 18:25:01 GMT
COPY dir:06c6c601a7d74d009c8428c3fe8a3ad16d52c40758b67d935d7ec0353d91cca8 in C:\Program Files\Go 
# Wed, 12 Aug 2026 18:25:03 GMT
RUN go version
# Wed, 12 Aug 2026 18:25:04 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32500563c19040f420549f390125e72ae8c599b7f593c67ed8f2d9fbb19eb99`  
		Last Modified: Wed, 12 Aug 2026 18:25:10 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5080402fc1c6e577ecf4fbc72921405f52d28edde5070db7afafefaa7d78a7`  
		Last Modified: Wed, 12 Aug 2026 18:25:10 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b069699a61567e1982a36f38b91719a1f111b503a928f9154c41f9e2eb5135`  
		Last Modified: Wed, 12 Aug 2026 18:25:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7605393c3218ab8188954e295a0ecd6aa4f8e56c7b81e9bad8f1f0d6e8e27f7`  
		Last Modified: Wed, 12 Aug 2026 18:25:10 GMT  
		Size: 72.8 KB (72821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25119954f7c66326f09394ec90844637aef376559a74015d02ade54bf79ca328`  
		Last Modified: Wed, 12 Aug 2026 18:25:08 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9914f059989c6b3cdf527a9277dcd07a2d8c9fd5a1239e73e7fc01df563b77d1`  
		Last Modified: Wed, 12 Aug 2026 18:25:08 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc8053399f4d43e482104c41bfc5b0763de0dc39b9937f78818c31da321f282`  
		Last Modified: Wed, 12 Aug 2026 18:25:19 GMT  
		Size: 69.2 MB (69247113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27acb10993505f109b33951af0d3e62446a2a679ab27783be4a190b2b24d0ce7`  
		Last Modified: Wed, 12 Aug 2026 18:25:08 GMT  
		Size: 76.3 KB (76287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896c37c60c482a12793d02b6fb6e70d0af84376d8e8acbcf355742357def5ac5`  
		Last Modified: Wed, 12 Aug 2026 18:25:08 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
