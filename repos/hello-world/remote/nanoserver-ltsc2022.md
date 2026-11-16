## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:e1b8919c2b2c0b6130b48f24bf5d937a324d0b7af6e29bd07c875918dd421cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull hello-world@sha256:f8a7a304519b0fc3d5d8a47bd5b417eecea3f97e8b487e2132a7bfb3e00fc467
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126276766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ac956fa01fa187fc57ffdbb2ea346d8e78eae15e3db8ca4736e390249f04d2`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 19:50:52 GMT
RUN cmd /S /C #(nop) COPY file:9fca1d3c77d0758894ceeb7952e49e3b465b238dc4943832e9436b0ce84d8ae0 in C: 
# Mon, 16 Nov 2026 19:50:56 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d86e958b3ac1a48a13a66c5a6b836e9d0180fb533aa98381d944262ddca89cc`  
		Last Modified: Mon, 16 Nov 2026 19:51:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66246c35a9bf16279ea2764cf774ca1e400b2b18ae48ca1c62abb34893b2824`  
		Last Modified: Mon, 16 Nov 2026 19:51:00 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
