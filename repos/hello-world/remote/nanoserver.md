## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:80ff02c55a361c69715241f96f72b739a78116e5ee06068685d11f557dcd2641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `hello-world:nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hello-world@sha256:f849794dd949b6bab0b4e523d009d1209380862a1862dfbc4aef65826b417380
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197222149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac585d6da7102c472dc05087f01273ce1cb4cdb8707a853cb959c6f5772d4d0`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:20 GMT
RUN cmd /S /C #(nop) COPY file:22c7ae19fd4cf03d26e9cf1357869206bf69101c4233df05ad5f8fa29b73cde4 in C: 
# Wed, 15 Jul 2026 23:03:21 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711a3f7072b72596b292ea8c96cb8036cd5a38694b772a81bedb36cbaffa808f`  
		Last Modified: Wed, 15 Jul 2026 23:03:26 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7288e69db41d3fe60e470d0947b0ba833d27811a644cb64c273a844b0659732`  
		Last Modified: Wed, 15 Jul 2026 23:03:26 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hello-world@sha256:eb36d0034032fca50de49ccc273f46e0e9a9dcb654f609af87609be47d79eb51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124105998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6946d913467aadd616d8afa56458e14a51800d8c0ab8686a480e44efab28ca5`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:56 GMT
RUN cmd /S /C #(nop) COPY file:9fca1d3c77d0758894ceeb7952e49e3b465b238dc4943832e9436b0ce84d8ae0 in C: 
# Wed, 15 Jul 2026 23:02:58 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c681c2470340561fcac306b9c3d5a42219fa1ad09898f453929ac779bc0c9a`  
		Last Modified: Wed, 15 Jul 2026 23:03:02 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5545c9b277f18005760a3a5017d13f67966a7ba8048b0766243b0be057651c`  
		Last Modified: Wed, 15 Jul 2026 23:03:02 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
