## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:9dd22a1e22765494775299409dfec6e904b133bac4c921bb29b3889f4885fa0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

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
