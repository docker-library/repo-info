## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:a21fdef619de40ae52ab3af66de805567cf72af287e7dfc2f60bae9d2dd4f664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `hello-world:nanoserver` - windows version 10.0.26100.33822; amd64

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

### `hello-world:nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull hello-world@sha256:493b1f8475d4390b041a785279ce07c74a4130dfe73e59f56e7d577f71613979
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126287848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed1306e1e9da0ea7dd264c02e9612fff386f0748d6b7bc42ddf24ea079eedd1c`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 21:50:34 GMT
RUN cmd /S /C #(nop) COPY file:9fca1d3c77d0758894ceeb7952e49e3b465b238dc4943832e9436b0ce84d8ae0 in C: 
# Wed, 11 Nov 2026 21:50:35 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8829b1dd8ef88f8cc7d83669fb08a28f9922282d60988f7b62a138c09f4cb4f`  
		Last Modified: Wed, 11 Nov 2026 21:50:39 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75861cb7e5f0af31c1e6d0b090b66b9cdbc6a3490d4bfca045088d32d2a61f8`  
		Last Modified: Wed, 11 Nov 2026 21:50:40 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
