## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:4a9014d1ca19c8494fa7e505c165735b3a2dff69723283bca4827d912c9be8f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `hello-world:nanoserver` - windows version 10.0.26100.33674; amd64

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

### `hello-world:nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull hello-world@sha256:04da9a8692a3b13f126d378def3a214cf8741d1b524df50b9ab1d46cfe9d0af4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125929509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb429aa11a94a872cb8f28ef649cccd48bbefeb05f204546ff2c778b335f83d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 17:46:24 GMT
RUN cmd /S /C #(nop) COPY file:9fca1d3c77d0758894ceeb7952e49e3b465b238dc4943832e9436b0ce84d8ae0 in C: 
# Tue, 27 Oct 2026 17:46:26 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5cb8c26da5d4baaf90aa7ede4cecb286232492cbbdb23042369c513c10b81`  
		Last Modified: Tue, 27 Oct 2026 17:46:31 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98513be937f984746e548e07f444606a75f0934c4059f6d530f23afc09fd250f`  
		Last Modified: Tue, 27 Oct 2026 17:46:31 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
