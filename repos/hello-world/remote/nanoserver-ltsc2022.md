## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:8bd18cd3ea467af8a6cc13bb24c6a14ca0df30e04246574607b65bbaa0085770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

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
