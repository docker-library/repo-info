## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:05c369d2c16dc0f2c8e9e16125bae3706307ca06de1fe8f956a91dd7215bf43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hello-world@sha256:8fd8355009a7203af4b6252a3a7ad8c23b684c4cc6710057fbd88fba6ad250e8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124640231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a44abb8cdcd4be9d3d97b408dc3465625f982159cd9ddbc147308820f01c72`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
RUN cmd /S /C #(nop) COPY file:9fca1d3c77d0758894ceeb7952e49e3b465b238dc4943832e9436b0ce84d8ae0 in C: 
# Wed, 09 Sep 2026 22:32:05 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8ef01330ce30478fa41dfd7e329ffd169714ce62d19e023a8fdf6c0ab78bfe`  
		Last Modified: Wed, 09 Sep 2026 22:32:09 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5548542e11ff3cf3ba035bf8f6a4c8aa8c679704db84bc293c31104e0b2b83ff`  
		Last Modified: Wed, 09 Sep 2026 22:32:09 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
