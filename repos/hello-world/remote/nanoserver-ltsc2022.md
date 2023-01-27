## `hello-world:nanoserver-ltsc2022`

```console
$ docker pull hello-world@sha256:d4f4d9acde01a637590c8e9c6699fd3fee0a079ebc9ce156d5e790798467de74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `hello-world:nanoserver-ltsc2022` - windows version 10.0.20348.1487; amd64

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
