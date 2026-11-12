## `golang:1-nanoserver-ltsc2025`

```console
$ docker pull golang@sha256:45f34c4114bc97558d95adbe83b63da5c7cd7412a709a7616b314653856b7259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `golang:1-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull golang@sha256:afa1e412607be6e2c8396809ab8b401915450378f1f7b918998bd58abe401594
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273585301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a84a0e5b4ea3092216f43e49cbf8062b0dfd94a682333ff8e852aa645d7bc8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:58:39 GMT
SHELL [cmd /S /C]
# Wed, 11 Nov 2026 22:58:39 GMT
ENV GOPATH=C:\go
# Wed, 11 Nov 2026 22:58:40 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:58:41 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 11 Nov 2026 22:58:42 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:58:43 GMT
ENV GOLANG_VERSION=1.27.4
# Wed, 11 Nov 2026 23:00:42 GMT
COPY dir:046e3a79934e4329b17e94daaaac02d4c5849fafce4bfbeac0b852c0ecfdd6c0 in C:\Program Files\Go 
# Wed, 11 Nov 2026 23:00:44 GMT
RUN go version
# Wed, 11 Nov 2026 23:00:45 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb8fd6be5313d671d9668419d240edb4dd40cc900393562d42dffbc30c95011`  
		Last Modified: Wed, 11 Nov 2026 23:00:57 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e96ce02203b01242ff4ab56f783379206ba0d7f4b422dfd0c7e8f076f4e3ea4`  
		Last Modified: Wed, 11 Nov 2026 23:00:55 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87108c72b9613ab87777331c9b2a2fcdb206d10910e6373d26fcf8cea63cf95`  
		Last Modified: Wed, 11 Nov 2026 23:00:55 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7776d8164fbbde7efee83b707d11994bdf772d6e775501927ce6ec512498e3b4`  
		Last Modified: Wed, 11 Nov 2026 23:00:56 GMT  
		Size: 71.9 KB (71862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1120c7af827b09df15a7bea119e3edfa591fc13e009a0083edec328cae7795da`  
		Last Modified: Wed, 11 Nov 2026 23:00:54 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a55c1bcad39be8758dd98c8a48c100eba16ee840d8c4c37da199c1add32e3e6`  
		Last Modified: Wed, 11 Nov 2026 23:00:53 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476c97b7370b32bb77ff3af3adb141e58101db835c28d8681bcc9a9d0bdaa349`  
		Last Modified: Wed, 11 Nov 2026 23:01:05 GMT  
		Size: 73.2 MB (73184840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67a94d05700f45352679f0a7c3185383bc39f35870fec1db48f441aef430349`  
		Last Modified: Wed, 11 Nov 2026 23:00:53 GMT  
		Size: 79.9 KB (79857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948fc8e0232c7b675bb560bceb59b5a3ea3e53923841c3ac4e0e4977ffe287a8`  
		Last Modified: Wed, 11 Nov 2026 23:00:53 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
