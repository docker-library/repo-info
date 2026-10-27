## `hello-world:nanoserver-ltsc2025`

```console
$ docker pull hello-world@sha256:e78dec6982395f4f83172fd5473e2f0a3cb00e2f2bfd2c2b8854c2e4ff1aa625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `hello-world:nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull hello-world@sha256:20e26fb7982c0d02a2bf39d3eb60a64baf70e96892c28259ba477b335db24a4e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (199961925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb328645e565e3dda62cfda09e4b2cf60ba05aab30082667eb185c4e658c59`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 17:45:59 GMT
RUN cmd /S /C #(nop) COPY file:22c7ae19fd4cf03d26e9cf1357869206bf69101c4233df05ad5f8fa29b73cde4 in C: 
# Tue, 27 Oct 2026 17:46:01 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf099573c85cd5c5d4715bd8ab6ac27c28641afd9591f795a89756bb7c08a46`  
		Last Modified: Tue, 27 Oct 2026 17:46:06 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe4847cc2d8fa2356dd878753f8e59abb723f3eba6cd369c5f45ff7754bdcef`  
		Last Modified: Tue, 27 Oct 2026 17:46:05 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
