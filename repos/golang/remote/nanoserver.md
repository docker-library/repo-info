## `golang:nanoserver`

```console
$ docker pull golang@sha256:f677be05166b1ee416f3c59dfd008e277fbebcf39361ad3be738fa3736b21ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `golang:nanoserver` - windows version 10.0.26100.33828; amd64

```console
$ docker pull golang@sha256:e2938cb249c1db1865b44cea8929e69aa4984d7b97542ec8ab4f99cc646cb70f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273576390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c16003288e59ed37e88a75a44b68e13145ce60a602b9d7c2e8fb7422ebf24cfe`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:45:29 GMT
SHELL [cmd /S /C]
# Mon, 16 Nov 2026 20:45:29 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:45:30 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:45:31 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Mon, 16 Nov 2026 20:45:33 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:34 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:47:16 GMT
COPY dir:046e3a79934e4329b17e94daaaac02d4c5849fafce4bfbeac0b852c0ecfdd6c0 in C:\Program Files\Go 
# Mon, 16 Nov 2026 20:47:18 GMT
RUN go version
# Mon, 16 Nov 2026 20:47:19 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32768227368bcc7df241dd9f15e74ddba3f3dc3b4d2bdd3b535564a3aee5d54a`  
		Last Modified: Mon, 16 Nov 2026 20:47:31 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b628c36ce002e39d72c70f369d9faed3545a04cec3b8dd6128b1a120fa537ac6`  
		Last Modified: Mon, 16 Nov 2026 20:47:31 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7933c837ed40fff03c0fa823a15de38e64902dff319d728a95948f99596d3395`  
		Last Modified: Mon, 16 Nov 2026 20:47:31 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f5af104d5a8d501181b9288c99a4e7492d17d0229c035b94cd6515dd231d7a`  
		Last Modified: Mon, 16 Nov 2026 20:47:31 GMT  
		Size: 71.9 KB (71945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd5db4a5c44f2f4dd8bdf4453f4bb2eeb4fe30ef96f3c56d5f89fb3c6dc545c`  
		Last Modified: Mon, 16 Nov 2026 20:47:29 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28aac259278990e8573e224bfb48540dfbe8e0c7f6220cc43adef63d09e55a6`  
		Last Modified: Mon, 16 Nov 2026 20:47:29 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f73fa6c33657fab2576430fb9d7f0e9d7399b1489be1c14d78c003cd593771`  
		Last Modified: Mon, 16 Nov 2026 20:47:39 GMT  
		Size: 73.2 MB (73179684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392eb7ee6ac8beff6734a01a3164e665d764c905d3f627b3c0038174794aa652`  
		Last Modified: Mon, 16 Nov 2026 20:47:29 GMT  
		Size: 78.5 KB (78484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4950fc9ec0fb085207a98c55d775e8c32554e5927b3a6a5229a86fb8fe35817`  
		Last Modified: Mon, 16 Nov 2026 20:47:29 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull golang@sha256:b0b9893e3f749fa05bc1b238c646c3490b1240887999e14e4befd933780ed136
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199619882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4791a3ce81a27ad2a23438f6794dfe6f7b1f4cfad4b025e9ce9552ae6792ee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:36:21 GMT
SHELL [cmd /S /C]
# Mon, 16 Nov 2026 20:36:21 GMT
ENV GOPATH=C:\go
# Mon, 16 Nov 2026 20:36:22 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:36:23 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Mon, 16 Nov 2026 20:36:23 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:36:24 GMT
ENV GOLANG_VERSION=1.27.4
# Mon, 16 Nov 2026 20:38:34 GMT
COPY dir:046e3a79934e4329b17e94daaaac02d4c5849fafce4bfbeac0b852c0ecfdd6c0 in C:\Program Files\Go 
# Mon, 16 Nov 2026 20:38:36 GMT
RUN go version
# Mon, 16 Nov 2026 20:38:37 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b31d8d080a3980a52846f5a664e4f52960adcc889998dbed101e030b7db978d`  
		Last Modified: Mon, 16 Nov 2026 20:38:51 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3254e707f708c6ae908c5fbb1a3e73f68f188457cfa40d7f67f849fba6086d`  
		Last Modified: Mon, 16 Nov 2026 20:38:51 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d409f369a4573390a4912f800bb6f0c08b6fa381820d01c22c47dcb471dd27`  
		Last Modified: Mon, 16 Nov 2026 20:38:51 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fdc3e79eaf315d022380258a3031a11b39adc640bede5b37feb8d4fd2eaef9`  
		Last Modified: Mon, 16 Nov 2026 20:38:51 GMT  
		Size: 76.2 KB (76191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf948142be4a187d7604e32ffccba740621a6a1e41f69f55c1a39e28259e5849`  
		Last Modified: Mon, 16 Nov 2026 20:38:49 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e95715b072abedf896f40175a5b53f5d2a43dcfb6e133c9d8e7e32652fc11`  
		Last Modified: Mon, 16 Nov 2026 20:38:49 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3937e06ad7e882acff4c82f202d82c129ba213a36798cf0765a0e2b7cb044f`  
		Last Modified: Mon, 16 Nov 2026 20:39:00 GMT  
		Size: 73.2 MB (73178913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c42b4902da3df0ee816ab24fbb622274901f0941293150bc430b88ec7d49fdc`  
		Last Modified: Mon, 16 Nov 2026 20:38:49 GMT  
		Size: 84.4 KB (84365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d4372c70ab9087e0f939914e42c1b104f65d5a1fc312e673f55e30eeb18821`  
		Last Modified: Mon, 16 Nov 2026 20:38:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
