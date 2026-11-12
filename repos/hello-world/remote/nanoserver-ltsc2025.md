## `hello-world:nanoserver-ltsc2025`

```console
$ docker pull hello-world@sha256:082a5223fa24a77c60427f3bf45fa510dde87df172bbd6cc2ae0f547612aa903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `hello-world:nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull hello-world@sha256:3dab0292f64f8f4203234b8c5b1ab300d6f1efaa62914bf48ce6be21b40cf685
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200245098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdb5ddf3715916b7520f74361753d2ea22973a7e6ef0fe2f1187421444f3fab`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:26 GMT
RUN cmd /S /C #(nop) COPY file:22c7ae19fd4cf03d26e9cf1357869206bf69101c4233df05ad5f8fa29b73cde4 in C: 
# Wed, 11 Nov 2026 21:50:28 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f7e5c4470a30fcb8406fbb106d3592fd20356ec2e9b78705a14d1bfbf0c69`  
		Last Modified: Wed, 11 Nov 2026 21:50:32 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfca0e552979cc9045a8f04b00cb15b756048aebe95415f9c1111da35fab447`  
		Last Modified: Wed, 11 Nov 2026 21:50:32 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
