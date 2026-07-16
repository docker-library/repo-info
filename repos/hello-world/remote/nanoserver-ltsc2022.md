## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:17fc2cd7d0d7277257a88b6d75ce268e88dbd5cb856d8c71dba3c343c139c859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

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
