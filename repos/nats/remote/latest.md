## `nats:latest`

```console
$ docker pull nats@sha256:9e0608dd48d85e46f71e31f6ca3b12cc8260e02196afa5e1ee7ea1146741df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5773; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:6157c118e1f123b1d7ee3bc74906b2f52611d95fe1679e921f032a0fe38a129b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34c1bd421408b4c9b4cf44924c889240fae209262f0a5a7393d1d373b015ff0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 19:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 05 Nov 2026 19:54:45 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 05 Nov 2026 19:54:45 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 05 Nov 2026 19:54:45 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 19:54:45 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 05 Nov 2026 19:54:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85666a44130ea569c7652b2675cf7e78de35523109d6cd361955d40e6ef6230f`  
		Last Modified: Thu, 05 Nov 2026 19:54:49 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:333b1ba3f47c9c7e142859d205b7ba010711bf94f4bcc49e42393347bfecae4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6934751a9438ed013f40f1e415c4cdda971a57f8192704e79f1282c87f0a6c44`

```dockerfile
```

-	Layers:
	-	`sha256:415657b118f22577f36c0d09abb938cceca9ea3d08ef73b72f4a2dee99a66c73`  
		Last Modified: Thu, 05 Nov 2026 19:54:49 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:5b281606c92e15084fca4feaaa2f7b33d31898140a6e666c82c81b3156c29ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c51c5f35a6737837f2cc05dc0a2acd70949bc0bf4573527fa351b76323accfe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 19:26:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 05 Nov 2026 19:26:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 05 Nov 2026 19:26:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 05 Nov 2026 19:26:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 19:26:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 05 Nov 2026 19:26:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd97f5503b7d165957c57b51abdf2839241c530cccda5f7a4ecef23f90d9b5e`  
		Last Modified: Thu, 05 Nov 2026 19:26:44 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:9f93e4a86fddf61bc917c02084e873f3733ea15f238fff3f866a9253a2b5bf94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5606a321eda7732af7e8381ebab72bbf58019d0c97e8a558ca1e97c8d557f0c7`

```dockerfile
```

-	Layers:
	-	`sha256:889a32b10004d3aa1437d6712901735ac6054a8bf6a907c51ed9548d04f0a1a7`  
		Last Modified: Thu, 05 Nov 2026 19:26:45 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:d2e481eabda051f4866b756318dab6b37ae58ce4e391455154c8fbd43c91fe8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d70657ec7c3ecdb7a947b458e060737df13151b8d7bc7f351e4268d4597633`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 19:30:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 05 Nov 2026 19:30:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 05 Nov 2026 19:30:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 05 Nov 2026 19:30:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 19:30:29 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 05 Nov 2026 19:30:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c14131fdfd5f37153fb5412e24f6f5e13347aec9353702a6d02799bd89df3f`  
		Last Modified: Thu, 05 Nov 2026 19:30:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:a441dc5280b27cd3bb86ee355cac3fa33cd41c1cf508267bf5154995f83a04fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cfdb0fcc82a4327f59f56f0d2b187243a423ecc75ed616099e9879451285216`

```dockerfile
```

-	Layers:
	-	`sha256:e438a6ec8fffb0b460770af5a94798d6bc21d832c65bc8b193e8036d188e7081`  
		Last Modified: Thu, 05 Nov 2026 19:30:34 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:bc75daab174c30db19e2556c93fad36eb1550569c0a7870f5b1e3ac27e68cfad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450dd5dca77806ba9b2ac0ca2be547ed4925dd075b2357f83886d1498c94ab49`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:11:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 05 Nov 2026 20:11:20 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 05 Nov 2026 20:11:20 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 05 Nov 2026 20:11:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 20:11:20 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 05 Nov 2026 20:11:20 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ec7bc3c9c92b075ac7480d5065b5b9f56b1c8284d9b2f8f6399700a9e297ae`  
		Last Modified: Thu, 05 Nov 2026 20:11:24 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:29e00f412607fea0a670b5a979057a58bb8763b88a6e9351de92c28fa9df6c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8119c7f895fed55c54920fa8bcebf5d114545fc17e6f73dfd844e6014a22b3`

```dockerfile
```

-	Layers:
	-	`sha256:a7799f30a0f6aba35e99156f2369367802f40c87ba0e65dd0e63a951cdb5fd09`  
		Last Modified: Thu, 05 Nov 2026 20:11:24 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:445403515eb406c51c66d22db5f30286ce1c3ac9a4e57c83df0d340357865cbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc8abb3265ca231d2b8dc64ceb7b13b65b972d03df252fa18f00a88d52deff40`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 21:28:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 05 Nov 2026 21:28:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 05 Nov 2026 21:28:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 05 Nov 2026 21:28:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 21:28:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 05 Nov 2026 21:28:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3140f9c037458b32d036796ca14f76f0333586b73b9bd095cd10db53bac071`  
		Last Modified: Thu, 05 Nov 2026 21:28:51 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:b99fa69028d5ef08c2267c89e0f768c77ba925aa43d23bfdb27e61a13c16131b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85b8a446d88dce48529a8e3709f2a942673d52de917e7c1e6e6124cc674eef8`

```dockerfile
```

-	Layers:
	-	`sha256:5696cd49fff63530ac2fa339d9c278997f848d46c5e23f85557b13a1de92ea5c`  
		Last Modified: Thu, 05 Nov 2026 21:28:51 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
