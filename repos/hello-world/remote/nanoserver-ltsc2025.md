## `hello-world:nanoserver-ltsc2025`

```console
$ docker pull hello-world@sha256:27fc18532b8ac9f6e8c988ab495b6ad7f26d985f71c2de6e091227cd9a409c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `hello-world:nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

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
