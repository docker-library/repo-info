## `nats:nanoserver`

```console
$ docker pull nats@sha256:c07d25fff51199c0852e04960c77308a7713571b9c7ffdd180f938b1c4214f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
