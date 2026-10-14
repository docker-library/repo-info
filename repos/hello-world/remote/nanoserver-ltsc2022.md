## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:9698a407592825e589b9bf26dbc51deacc5ddc5cb018c3d19319664f707b3c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

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
