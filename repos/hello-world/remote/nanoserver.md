## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:d3b8f6bbcea040e8de840a1d674fa9cf21f0521a2823ec45f072d39fa46825e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `hello-world:nanoserver` - windows version 10.0.26100.33296; amd64

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

### `hello-world:nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull hello-world@sha256:acb5b18edfadbfce49087d51aa149ebf182d0ef1280e85c0a3b3d2d63464a3f5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124260751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9893b18697daf766fd71755afb9eb96835768cd0185581fbbe226d4b86957f`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 17:34:09 GMT
RUN cmd /S /C #(nop) COPY file:9fca1d3c77d0758894ceeb7952e49e3b465b238dc4943832e9436b0ce84d8ae0 in C: 
# Wed, 12 Aug 2026 17:34:11 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3993335d2fc4fb77d13a78366c9add88456a811a04976942fe8a243e2c597b3`  
		Last Modified: Wed, 12 Aug 2026 17:34:15 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66701a5a13e9be7ec2709e255d121db01900d6ccd72c540a0211854fca0c77f3`  
		Last Modified: Wed, 12 Aug 2026 17:34:15 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
