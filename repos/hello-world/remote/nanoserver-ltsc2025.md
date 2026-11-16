## `hello-world:nanoserver-ltsc2025`

```console
$ docker pull hello-world@sha256:0fbea4023757ee82a47a57b9906ea3e16436cf3008e9ec549fa5fb9531ecdce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `hello-world:nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull hello-world@sha256:1adee175b582d2873cb2a3df57f5d0f34ec6625a2e795631663f337fa13c7907
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200242623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85d404d5964b4271a6275a97b7be58e46f14fc7d575eac97ce79ebd72b23a20`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 19:50:25 GMT
RUN cmd /S /C #(nop) COPY file:22c7ae19fd4cf03d26e9cf1357869206bf69101c4233df05ad5f8fa29b73cde4 in C: 
# Mon, 16 Nov 2026 19:50:27 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e42fd987b507c015d98da978ab250a3e2076628dc594c5769007e7166c1228a`  
		Last Modified: Mon, 16 Nov 2026 19:50:31 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0575aaee8bd2aea0b493948385f9cc2ae4ef5736af960bc017bb58680e3c599a`  
		Last Modified: Mon, 16 Nov 2026 19:50:31 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
