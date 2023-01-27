## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:7f6b256ce9a79c22add4657688fc5c7fd78c0cd176a711aacc8e69d043c5c0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `hello-world:nanoserver` - windows version 10.0.20348.1487; amd64

```console
$ docker pull hello-world@sha256:85cb8a21bf48b235130639896249c369832588da34f8ae8c7f3995aa824be7d5
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122102608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1975daee8122ff6683c8a5c2d92a94d7f54b1fb38e4a02dd2e50a760a3b8eedf`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 02:56:23 GMT
RUN cmd /S /C #(nop) COPY file:ac9f104fd739943f22886335a779468d86b20ac43fd3168171f6b23fc28882b9 in C: 
# Thu, 12 Jan 2023 02:56:23 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9f4925dfd062d0409798f1392c7f55208583481ea972412012ca09f140258d`  
		Last Modified: Thu, 12 Jan 2023 02:56:46 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b319832b49b74549b81d3ed403ec5fa411af7ea583fbeb175d540ee3c425b8c8`  
		Last Modified: Thu, 12 Jan 2023 02:56:46 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.17763.3887; amd64

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
