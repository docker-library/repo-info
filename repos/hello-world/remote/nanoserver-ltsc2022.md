## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:8201a8c99685a1d1b9542576a575b069cd18fc1781c000f56c7c61fe624f3f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

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
