## `hello-world:nanoserver-1809`

```console
$ docker pull hello-world@sha256:965ba0c7dda1680bcb92b047020401bf3ff00841b00d884d4d49e9e915c5ce5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `hello-world:nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull hello-world@sha256:87b9ca29151260634b95efb84d43b05335dc3ed36cc132e2b920dd1955342d20
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106669121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33d37034c87efcb02a0b6e87f26dbad8c8f73ada0fe4892c385d6ede87631b4`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 02:56:29 GMT
RUN cmd /S /C #(nop) COPY file:994f63bc3cea8285310afa5f4677df29bf99dd4cd1881c7e381100a9e794ba71 in C: 
# Thu, 12 Jan 2023 02:56:30 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432369badaaa964ff498d339317285a36677deb519482e9ae53a90db093d2084`  
		Last Modified: Thu, 12 Jan 2023 02:56:52 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e4ddcdf7f78815775a9b5b386ae1bc216b52c80bc0c77851f398a8896d015b`  
		Last Modified: Thu, 12 Jan 2023 02:56:52 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
