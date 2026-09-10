## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:9a1c897c7451be07ad5afbe155e8cfaa7d073c06de50650cbef08fc57f18a7a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `hello-world:nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hello-world@sha256:d08be0dd652a88e9c94d92d367bbcc7b9b5f3e4f063bea5a8c94fa637160b434
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197653378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3d354c1e097530a1b290108bc8675760fa8bba06f42ed98dca84505dcffc9d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:00 GMT
RUN cmd /S /C #(nop) COPY file:22c7ae19fd4cf03d26e9cf1357869206bf69101c4233df05ad5f8fa29b73cde4 in C: 
# Wed, 09 Sep 2026 22:32:02 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fb3a522cf54557b1da61ce6f45652b765be0fae16b632aa4a2b2d0fedc226a`  
		Last Modified: Wed, 09 Sep 2026 22:32:06 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69a91e6144e6b9c1b4ed99fbb13b391c4fe023e78840de5295d659ab9830366`  
		Last Modified: Wed, 09 Sep 2026 22:32:06 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.20348.5622; amd64

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
