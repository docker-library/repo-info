## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:07ebb7f4bf382e4861657d51fe490ef525d9ce36517daa01a6c5f0cc1661a938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:0a5867b8dd45ac8d642debfeb239261ce548685b0562c0a1a02be16042ac4e40
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50449115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d65c010a4b0a46e393c0636b66a580b951b16267290c07d084eb625f60f648`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:18 GMT
ADD file:8cb7f2af0cf81b30d7ef6e6a20a3f2ad9e4b68871540d1bb5630f1226be0d439 in / 
# Wed, 11 Jan 2023 02:35:18 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:35:21 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e21f4dd808ce031f18f33bce31ec901646b1bfc9240aa39a52fad18d7a6bb16b`  
		Last Modified: Wed, 11 Jan 2023 02:40:07 GMT  
		Size: 50.4 MB (50448890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd1a88ab9ff70ae21b31ec3ddcfcc711bd6194302e58f4ab30c4b1d82a1013`  
		Last Modified: Wed, 11 Jan 2023 02:40:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:fc53c56031d3484c2741d8eb847594e135be7c58ff609230b14790135f49c412
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45915824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f62eb67b4bc24247f21b956fc0ff2bf16bfd79f261acf33bd1c8392cfb4c293d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 04:01:25 GMT
ADD file:2788c041902b55c1b9f66e407762115d0ae4a63ec1bc6146ed88e412e58fbe9f in / 
# Wed, 11 Jan 2023 04:01:26 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:01:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:373063ee9ea8a6ca6f9c316821d477100ecba6ef654d4343f91753bf7cb35169`  
		Last Modified: Wed, 11 Jan 2023 04:09:06 GMT  
		Size: 45.9 MB (45915599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08c8056bb39dfe1803132edf5929d70aecc16f3502dda112f751d8178a7039a`  
		Last Modified: Wed, 11 Jan 2023 04:09:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:bf58e8f14d1963848370c1d5c3ebad5d32f6467a019ede356d6bb2da2ac6790a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49234051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e3a3b241b2f2772420c10bec86ddf5be728de000ed28f1c7d8b4f8e4cb1856`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:59 GMT
ADD file:8b240deadb6bdd6f1a43f6dbad9ffed0376d53e28764aa9da9a763dfe4dad99a in / 
# Wed, 11 Jan 2023 02:57:59 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 02:58:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a3cd3898823af32adfab1e3238d57c810b0f13ccc18b62fb213845544f741604`  
		Last Modified: Wed, 11 Jan 2023 03:02:16 GMT  
		Size: 49.2 MB (49233826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8610a9366b6c9fe2b77b72cca2ab8f97bdc4da265b2ee94ff1c6ebba55a7a15`  
		Last Modified: Wed, 11 Jan 2023 03:02:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:d9bf8f152cb2fb65a451bf1d4c2ec364035e66787cf1a4f6ec9abff040cce26f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51208058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b940af1d7524bd43aeb437b4ea50f077083bfae900b6017724ef618526629be`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Jan 2023 03:16:47 GMT
ADD file:055f882d73e4aaa8217b0b08f2045f1c36676d72379b94b72489623eaf1dd3e6 in / 
# Wed, 11 Jan 2023 03:16:48 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:16:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c1072155ae32bbee15a2dfa3fbc7ac2bf041f377f19dbbe3b774a2b3cba1641d`  
		Last Modified: Wed, 11 Jan 2023 03:23:11 GMT  
		Size: 51.2 MB (51207830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15b52e0a1882483c50e2f711e3566e4e0a81ccf76c311a0fee4da5e7f01e26`  
		Last Modified: Wed, 11 Jan 2023 03:23:21 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
