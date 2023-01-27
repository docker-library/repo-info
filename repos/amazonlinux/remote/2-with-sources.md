## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:62b13a9eaba6c742134ffc4fd47fa4074441831519ae4076a3b4b2adbd197448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2d38587453f08b16b63169a66451ee34d0934db2399ee95c2614e86a5a7dae1b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492531606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad43da7b8649e85abd2f228c42dfa04e55336f23d3af0f78794e4307de8d545f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 22:20:30 GMT
RUN mkdir /usr/src/srpm     && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-5f290fbb01ed6cae6ec9436094897096f0cd61aa0fb90afb412045f989363faa.tar.gz"     && echo "a2345704122103f0cf035d1ae3d4fa863db8c73c0f08e6f8656f5ac9274b0eba  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9c62719ce9a736ff6f49a8d84be8316820a6035ab43ac69eaafb9ec7975bcd`  
		Last Modified: Thu, 26 Jan 2023 22:21:33 GMT  
		Size: 430.2 MB (430190538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:abcef3933194055013b7b02644b7ab3ca2ac28625e48190cfeda61595fffe67f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.2 MB (494155176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0726baa057a47e2e49ea7a98d3a8206bde79fd1225f738ccfc73ba0fd69eef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
# Thu, 26 Jan 2023 22:39:53 GMT
RUN mkdir /usr/src/srpm     && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-5f290fbb01ed6cae6ec9436094897096f0cd61aa0fb90afb412045f989363faa.tar.gz"     && echo "a2345704122103f0cf035d1ae3d4fa863db8c73c0f08e6f8656f5ac9274b0eba  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9850613c66f695c4d0de595f9359ad654f83678bbe4f57664bf76827b8ca00`  
		Last Modified: Thu, 26 Jan 2023 22:40:47 GMT  
		Size: 430.2 MB (430190534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
