## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:fde04b3effbac1fdaf851133f127ad6569ef22c63e0dd7e90f80c25e27f3b8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `golang:1-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull golang@sha256:3825a76d772b9b8251723dde29c868033cc1b987790284c9cefa8f66854c9a7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273228061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de01f2b7bc1e732e22ff3946047214ec0fd405be0df118cf1141db2cb816b204`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Wed, 28 Oct 2026 00:14:21 GMT
SHELL [cmd /S /C]
# Wed, 28 Oct 2026 00:14:22 GMT
ENV GOPATH=C:\go
# Wed, 28 Oct 2026 00:14:22 GMT
USER ContainerAdministrator
# Wed, 28 Oct 2026 00:14:28 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 28 Oct 2026 00:14:29 GMT
USER ContainerUser
# Wed, 28 Oct 2026 00:14:29 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 28 Oct 2026 00:15:59 GMT
COPY dir:d72405f8d4561a4e063b37128c6006d69b2ba5d7370a849f5d2ebba30f54149d in C:\Program Files\Go 
# Wed, 28 Oct 2026 00:16:02 GMT
RUN go version
# Wed, 28 Oct 2026 00:16:02 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b02a38ba44eb0527218db657d79203d4f1b70d575722aeb2d739602743ce4`  
		Last Modified: Wed, 28 Oct 2026 00:16:11 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af63c273609155631601b23531bb0f9278e4f0314d664481aa278a71ecac513`  
		Last Modified: Wed, 28 Oct 2026 00:16:12 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa0f3cdd5006caa42fcdb6b2690727bef644ba1296e7d242a1ebeebe8946fed`  
		Last Modified: Wed, 28 Oct 2026 00:16:11 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258f33a68eff0b5747274f1d14000f7a28c5b8e44626a3fe29b32e6d0f6a9187`  
		Last Modified: Wed, 28 Oct 2026 00:16:11 GMT  
		Size: 70.3 KB (70303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ecc42d44c577bc3fe5814c064e1afa44f50dd781675b9c270014296e02f253`  
		Last Modified: Wed, 28 Oct 2026 00:16:10 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c217b4952a7a3914d7b24833a778ccbb1c05b58b2f788501c9d1140bdab362db`  
		Last Modified: Wed, 28 Oct 2026 00:16:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f300b68c1ee50ff90e33de22e74d1fcf8a46836124b71cfb2640e4b3e7ed5b`  
		Last Modified: Wed, 28 Oct 2026 00:16:20 GMT  
		Size: 73.1 MB (73115204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad32cc33ee8460b58ccba79723adf617a9f72b17c40e82593cadb503412eb9cb`  
		Last Modified: Wed, 28 Oct 2026 00:16:10 GMT  
		Size: 77.0 KB (77037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa845bc972cb839fec33fcadaf4f240cbf2c9bf88c7985d6b1bc449f08817a09`  
		Last Modified: Wed, 28 Oct 2026 00:16:10 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull golang@sha256:b6f6e91d667312acf253b6aba2cfce11dd91bdb49720f5ac139374137f77b88f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199206790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec76e0a6f7fa15ffae05500e4c851ae1c544f45aafc87ac204c3e38bf2b52ff5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Wed, 28 Oct 2026 00:13:43 GMT
SHELL [cmd /S /C]
# Wed, 28 Oct 2026 00:13:45 GMT
ENV GOPATH=C:\go
# Wed, 28 Oct 2026 00:13:45 GMT
USER ContainerAdministrator
# Wed, 28 Oct 2026 00:13:54 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 28 Oct 2026 00:13:55 GMT
USER ContainerUser
# Wed, 28 Oct 2026 00:13:55 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 28 Oct 2026 00:15:35 GMT
COPY dir:d72405f8d4561a4e063b37128c6006d69b2ba5d7370a849f5d2ebba30f54149d in C:\Program Files\Go 
# Wed, 28 Oct 2026 00:15:37 GMT
RUN go version
# Wed, 28 Oct 2026 00:15:38 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c8ca569fa73365a02a161c188e1ea3536f3c24f63ae801fcd7e92365f63007`  
		Last Modified: Wed, 28 Oct 2026 00:15:53 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f3c11889074d06b53e8191588ffa1ecc98426c225b497a2591b36b447d23ab`  
		Last Modified: Wed, 28 Oct 2026 00:15:53 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d567f3e1956b931cd6e2c5c1d153a1eb640e29f404aa376916cc20875ee803e`  
		Last Modified: Wed, 28 Oct 2026 00:15:53 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0725cfbf4779532bf34bd9ae284c722cd729fec0f50bb35e51108b87f3b51a6`  
		Last Modified: Wed, 28 Oct 2026 00:15:53 GMT  
		Size: 73.4 KB (73418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171530367d24d78f7b6749412aed6dece15e848ef32a10787be2f0f89da7fd1a`  
		Last Modified: Wed, 28 Oct 2026 00:15:51 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1173b2640d1b56bc7b4ce365834cebac114c0dac1f5c8c05613ad8a0c223443d`  
		Last Modified: Wed, 28 Oct 2026 00:15:51 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15803cfba9420f52768b05bfbdde1f3feab236e270c58d42b8fd4145f9dfdd54`  
		Last Modified: Wed, 28 Oct 2026 00:16:01 GMT  
		Size: 73.1 MB (73113913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ea39d97a5c6757c8ebfe2dcff1a085afc8706ddcb876d064f8a3d6e89fdfe1`  
		Last Modified: Wed, 28 Oct 2026 00:15:51 GMT  
		Size: 86.2 KB (86179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be879318efcae0834cdc48a6442e7c8a6464a7c5b178c90bb3ce9aa29c5d43a4`  
		Last Modified: Wed, 28 Oct 2026 00:15:51 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
