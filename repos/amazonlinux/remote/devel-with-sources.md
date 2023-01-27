## `amazonlinux:devel-with-sources`

```console
$ docker pull amazonlinux@sha256:296f9a40be483bfdec4dee2f3198cad37f2dff4928df55d4a402d21dcb401a56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:devel-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:63e32a4d398fa29e655f67ec14533e9a4eca4aa5038c0b28e225ba532a876ef1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390019937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80491999508523551329681a6be8cc2de294465b0f480f9947a8c5e54d01d379`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:21:07 GMT
ADD file:c2f3cc504734106dfe39dce615cfa085097451f0876c9574a8294c8494624c9f in / 
# Fri, 16 Dec 2022 01:21:07 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2022 01:21:27 GMT
RUN mkdir /usr/src/srpm     && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-0e18855df9605c619bfdddcf96efa95943650dc6711ca144db81c72f8588b1e5.tar.gz"     && echo "4c1c20829b8261183075d44fbab402138760feda6163ff22701792d88cd7649c  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f692b7ceefbf778187c80c39b96d604e39ccf4a889e08c5f052481134db22ae1`  
		Last Modified: Tue, 13 Dec 2022 16:21:44 GMT  
		Size: 57.9 MB (57867562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b4a01c093415a1de083c9288e248843a67f227753a43d19db33a7881d10909`  
		Last Modified: Fri, 16 Dec 2022 01:23:59 GMT  
		Size: 332.2 MB (332152375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:devel-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:96adc3194bef5ff646a57b27439727c4f53a334f47cf2973687043efca10f972
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.9 MB (388864428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad9e3b1f44835b8b6c4012d13f132673ccf6e1411f4dc7af71a4aafd94dae17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 00:41:37 GMT
ADD file:ff147b37fd20344db08d3808c57eecb4baf220c236bdadf01d19a61f2dd6327e in / 
# Fri, 16 Dec 2022 00:41:38 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2022 00:41:54 GMT
RUN mkdir /usr/src/srpm     && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-0e18855df9605c619bfdddcf96efa95943650dc6711ca144db81c72f8588b1e5.tar.gz"     && echo "4c1c20829b8261183075d44fbab402138760feda6163ff22701792d88cd7649c  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f3bff8cbe57b20ad8a63095a2b0c5d31afccc39fd7fbaab9b0c483430b38429a`  
		Last Modified: Tue, 13 Dec 2022 16:26:02 GMT  
		Size: 56.7 MB (56712057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4171f41219f5fef2d776d5bb54af7cce1b43e645c3df8c0a0edfba5575187b8`  
		Last Modified: Fri, 16 Dec 2022 00:43:26 GMT  
		Size: 332.2 MB (332152371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
