## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:03fb8e2c440b88ea532ef55b1068ebcf62f5766c4e50f6662c663a0794c1a4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `golang:1-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull golang@sha256:16604251c28950eb8771265a93da12a13903bd6b486b428e34e3adb1557bbf9d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266892080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f99368abbceb769d8b63cb491050074fd0b9fe406d9a418d6ab6b4051bbdfc4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Thu, 13 Aug 2026 20:09:39 GMT
SHELL [cmd /S /C]
# Thu, 13 Aug 2026 20:09:39 GMT
ENV GOPATH=C:\go
# Thu, 13 Aug 2026 20:09:39 GMT
USER ContainerAdministrator
# Thu, 13 Aug 2026 20:09:46 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 13 Aug 2026 20:09:47 GMT
USER ContainerUser
# Thu, 13 Aug 2026 20:09:47 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 20:12:40 GMT
COPY dir:e906a9e08207a1f5960b2eb0b3aff0388fb557875bfee9cefc5a2286ed38e74a in C:\Program Files\Go 
# Thu, 13 Aug 2026 20:12:43 GMT
RUN go version
# Thu, 13 Aug 2026 20:12:43 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3169d80945ae3272f7c4533ab193ebed7093cf586fc91e125a3a5a612ce6c3d9`  
		Last Modified: Thu, 13 Aug 2026 20:12:59 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a087aa5a0989010e66d6700670ddf5f28645704a4e3caee6470e0dc74a375993`  
		Last Modified: Thu, 13 Aug 2026 20:12:59 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08bb2bcc1f488a1ab26c4d352fd13a53c0ad8cff8e69f5443f876601692e5f1`  
		Last Modified: Thu, 13 Aug 2026 20:12:59 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d33232abaa8c85e36c9a8ee2eb82c51a3421018836f4418b966f3ff3c5b841`  
		Last Modified: Thu, 13 Aug 2026 20:12:59 GMT  
		Size: 70.6 KB (70558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db76d45f0785d5f9dd1c1bd33d115207faae1b8808e97ce9c39b3b5c4fe00539`  
		Last Modified: Thu, 13 Aug 2026 20:12:57 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d3c031a56309762241def90e97650417a2bb1ca4115079006226ae80a5a813`  
		Last Modified: Thu, 13 Aug 2026 20:12:58 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491cf8053fbb5f9aeed064c1fd55b950018f54d2a2dda46cc59bd60765418993`  
		Last Modified: Thu, 13 Aug 2026 20:13:07 GMT  
		Size: 69.3 MB (69256527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb4de22057aa98cfa2c0fd1f267c2117efe80b3d57286971e610cf00c9dbd87`  
		Last Modified: Thu, 13 Aug 2026 20:12:58 GMT  
		Size: 76.4 KB (76402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8fc7227b64472333e05bfa4cb5ed5b4c5f1c477e82e9d88bcf81dc86dc8868`  
		Last Modified: Thu, 13 Aug 2026 20:12:57 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull golang@sha256:43036171e39aedb837a8dd4f39e089a1ac59461cff08547a0e19458f74cdef5e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193683278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521479c7e3ecb315fc0e02330ade422be58d3840243125a546bfbac317066f29`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Thu, 13 Aug 2026 20:09:39 GMT
SHELL [cmd /S /C]
# Thu, 13 Aug 2026 20:09:40 GMT
ENV GOPATH=C:\go
# Thu, 13 Aug 2026 20:09:40 GMT
USER ContainerAdministrator
# Thu, 13 Aug 2026 20:09:46 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 13 Aug 2026 20:09:46 GMT
USER ContainerUser
# Thu, 13 Aug 2026 20:12:51 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 20:14:07 GMT
COPY dir:e906a9e08207a1f5960b2eb0b3aff0388fb557875bfee9cefc5a2286ed38e74a in C:\Program Files\Go 
# Thu, 13 Aug 2026 20:14:09 GMT
RUN go version
# Thu, 13 Aug 2026 20:14:10 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc284f9a67fc718de14ace1f763e6e990c5a78c969c476de818e7639b3e306e5`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc61af99b00f1f1c606bd0bfcb7d1238ea1299313ac36c363bd4379357990a3b`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fb9ab1a91a700a7e0d11f0fcc323ed71e34da29699dd258b38ee88ef18a07b`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba9270d3be25bc0e29686d94681d2decdaac0ea1d9fbd69d5fa5b554a3d4cb`  
		Last Modified: Thu, 13 Aug 2026 20:12:00 GMT  
		Size: 81.0 KB (80991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cb8f305464d72a0c3a3bd3e4453f051febe8a9516a3e57a54783ccda53b8d5`  
		Last Modified: Thu, 13 Aug 2026 20:11:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9688112eb79b25d353eb730b9deeb0e9b92ffe1a14749da81703e57e16346e`  
		Last Modified: Thu, 13 Aug 2026 20:14:16 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56b5095f6033eeb2c4123b5011812c0c902345816a3517914687933de4f89b2`  
		Last Modified: Thu, 13 Aug 2026 20:14:26 GMT  
		Size: 69.3 MB (69254332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730c1409ab7a4e97e906d778f02e79db282ca283ed9a0eceae6dcb53e804e8e0`  
		Last Modified: Thu, 13 Aug 2026 20:14:16 GMT  
		Size: 83.4 KB (83428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a053ad5a02c9c57663f5e27e284eba1b08c0423384188f76c2f1c247411ca9b`  
		Last Modified: Thu, 13 Aug 2026 20:14:16 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
