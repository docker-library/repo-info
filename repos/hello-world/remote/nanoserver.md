## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:d62031ad6d10fcbcab531f16dc9a5848643b013036c0b617a56d04752c5e7d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `hello-world:nanoserver` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hello-world@sha256:922fa9c800f2fc72cc6279c37c8a98369b460d7198dd6c3eccdd275b1d8b9583
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199873964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214715108aadc9a02cb30ff6e2a0c1ed5420d65b4e3db4ea5b23cec5aab1b564`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Tue, 13 Oct 2026 22:58:53 GMT
RUN cmd /S /C #(nop) COPY file:22c7ae19fd4cf03d26e9cf1357869206bf69101c4233df05ad5f8fa29b73cde4 in C: 
# Tue, 13 Oct 2026 22:58:54 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4e97545abe31ee8c232b95494f8968102d9fd67ff8cbcad4b7e8c6121a8ece`  
		Last Modified: Tue, 13 Oct 2026 22:58:58 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d02f7a1382cb84c8edc4f2b3eb5fa21c01ce7edcf1fe0ad07410c9d8d9d39ad`  
		Last Modified: Tue, 13 Oct 2026 22:58:58 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hello-world@sha256:8dda6bd8c25bdc95535b9f15cfa411e30632111c87eed6b3fc258a4ba196f0e4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125798849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbe8e53f40302ce6e36e61969bee1892363e62c30ac857d5d290ec9b7814426`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Tue, 13 Oct 2026 22:55:23 GMT
RUN cmd /S /C #(nop) COPY file:9fca1d3c77d0758894ceeb7952e49e3b465b238dc4943832e9436b0ce84d8ae0 in C: 
# Tue, 13 Oct 2026 22:55:25 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9e1e9c3a4f9fc0018b8d789c59909ba490ee133de2a7a075e9f7e140791818`  
		Last Modified: Tue, 13 Oct 2026 22:55:29 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8391dd711e6dbff193f6ad357635467d4374e21b222ec9b91d609030c7259cad`  
		Last Modified: Tue, 13 Oct 2026 22:55:29 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
