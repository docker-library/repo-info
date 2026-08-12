## `hello-world:nanoserver-ltsc2025`

```console
$ docker pull hello-world@sha256:d05530515769328540a73836fd6838876b45696190aaa0881c02fdb749553c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `hello-world:nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull hello-world@sha256:fc346caeedb367cd9a9a25fa9bd72ad6e10c49282a68f53f720c695c31e0d433
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.5 MB (197485015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cc6ad6a49d477f67f5663d3c534b99e5d266375694c58ebd54db0ff0662062`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
RUN cmd /S /C #(nop) COPY file:22c7ae19fd4cf03d26e9cf1357869206bf69101c4233df05ad5f8fa29b73cde4 in C: 
# Wed, 12 Aug 2026 17:34:10 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa96ee5ab0a33179a5de7589079377d5a2cb9c9c98f270d2dc6ac2cd708004e3`  
		Last Modified: Wed, 12 Aug 2026 17:34:14 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d082eefdd7d02f39eb8df59456abfa261dc088c6c019a8769e73f9b3e8a4da3`  
		Last Modified: Wed, 12 Aug 2026 17:34:14 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
