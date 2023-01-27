<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:2.0.20230119.1`](#amazonlinux20202301191)
-	[`amazonlinux:2.0.20230119.1-with-sources`](#amazonlinux20202301191-with-sources)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2018.03.0.20221209.1`](#amazonlinux2018030202212091)
-	[`amazonlinux:2018.03.0.20221209.1-with-sources`](#amazonlinux2018030202212091-with-sources)
-	[`amazonlinux:2022`](#amazonlinux2022)
-	[`amazonlinux:2022-with-sources`](#amazonlinux2022-with-sources)
-	[`amazonlinux:2022.0.20221207.4`](#amazonlinux20220202212074)
-	[`amazonlinux:2022.0.20221207.4-with-sources`](#amazonlinux20220202212074-with-sources)
-	[`amazonlinux:devel`](#amazonlinuxdevel)
-	[`amazonlinux:devel-with-sources`](#amazonlinuxdevel-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:1356b67e56de9f90322de2a3b3003a39aeb47ef3ef22049990d31b51151238ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a49663f3d88d6f88fce90736668bde9da147de60a8f1418c7f9973165891969b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62277141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c7da45cac655a5173a8970af5a1c6c075db388078bb204cea5ccbaa1a56f55`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:20:28 GMT
ADD file:aeff02a412eec40b7e2088801912f1cfc84db78256189500b286338b791c7818 in / 
# Fri, 16 Dec 2022 01:20:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2521bea679352d902cf8cfca09fc770b5655dcc5a1142ccc97bc67c0da92aa4f`  
		Last Modified: Fri, 16 Dec 2022 01:22:50 GMT  
		Size: 62.3 MB (62277141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:c9b7d0462f3d9f924e9958a07559d555175dc0c03c8e12a48cd5db4d958db0f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3e21026ab020d1f390d0f7b35cf83f91bb4f7a8219cd45d53bf7f09d4df6d3eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.0 MB (515011261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65483cadfaad0e8c9559b12bfca121754bb3040c9911402841d22eb712403c1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:20:28 GMT
ADD file:aeff02a412eec40b7e2088801912f1cfc84db78256189500b286338b791c7818 in / 
# Fri, 16 Dec 2022 01:20:28 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2022 01:20:52 GMT
RUN mkdir /usr/src/srpm     && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-9c18de8662e5e9d6121bd1e9c0b0e64d5ecd6dc531f7887fad9209c406fb79a7.tar.gz"     && echo "46189d09ab457ff4fd0183269782c16602c1676f55e20a670f83a051d376b4b4  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2521bea679352d902cf8cfca09fc770b5655dcc5a1142ccc97bc67c0da92aa4f`  
		Last Modified: Fri, 16 Dec 2022 01:22:50 GMT  
		Size: 62.3 MB (62277141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e554b4cfa958701c452666d6fb250a74e229e8c33ebb75c2b49f5ae3585ec7`  
		Last Modified: Fri, 16 Dec 2022 01:23:18 GMT  
		Size: 452.7 MB (452734120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:66d22a2b8749283aa0764e6983fbb8bf8c143511cf16c9773598acca2a1cd6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:db0bf55c548efbbb167c60ced2eb0ca60769de293667d18b92c0c089b8038279
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62341068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92310fbb9f4cb6ae7cbbfc7fdb22d61f35279bd4ceae30d7cf7dcddb9e5b2e41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:edfe6cc6ed773f9fafef779b8fe925b127c3e811e46367b3a851536a48d6613b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63964642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa2bfcf82b27a574cd54b7a50d459fa2cacc70b68410e0f46cafa32f1319c65`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `amazonlinux:2.0.20230119.1`

```console
$ docker pull amazonlinux@sha256:66d22a2b8749283aa0764e6983fbb8bf8c143511cf16c9773598acca2a1cd6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2.0.20230119.1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:db0bf55c548efbbb167c60ced2eb0ca60769de293667d18b92c0c089b8038279
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62341068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92310fbb9f4cb6ae7cbbfc7fdb22d61f35279bd4ceae30d7cf7dcddb9e5b2e41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2.0.20230119.1` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:edfe6cc6ed773f9fafef779b8fe925b127c3e811e46367b3a851536a48d6613b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63964642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa2bfcf82b27a574cd54b7a50d459fa2cacc70b68410e0f46cafa32f1319c65`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20230119.1-with-sources`

```console
$ docker pull amazonlinux@sha256:62b13a9eaba6c742134ffc4fd47fa4074441831519ae4076a3b4b2adbd197448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2.0.20230119.1-with-sources` - linux; amd64

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

### `amazonlinux:2.0.20230119.1-with-sources` - linux; arm64 variant v8

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

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:1356b67e56de9f90322de2a3b3003a39aeb47ef3ef22049990d31b51151238ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a49663f3d88d6f88fce90736668bde9da147de60a8f1418c7f9973165891969b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62277141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c7da45cac655a5173a8970af5a1c6c075db388078bb204cea5ccbaa1a56f55`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:20:28 GMT
ADD file:aeff02a412eec40b7e2088801912f1cfc84db78256189500b286338b791c7818 in / 
# Fri, 16 Dec 2022 01:20:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2521bea679352d902cf8cfca09fc770b5655dcc5a1142ccc97bc67c0da92aa4f`  
		Last Modified: Fri, 16 Dec 2022 01:22:50 GMT  
		Size: 62.3 MB (62277141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:c9b7d0462f3d9f924e9958a07559d555175dc0c03c8e12a48cd5db4d958db0f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3e21026ab020d1f390d0f7b35cf83f91bb4f7a8219cd45d53bf7f09d4df6d3eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.0 MB (515011261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65483cadfaad0e8c9559b12bfca121754bb3040c9911402841d22eb712403c1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:20:28 GMT
ADD file:aeff02a412eec40b7e2088801912f1cfc84db78256189500b286338b791c7818 in / 
# Fri, 16 Dec 2022 01:20:28 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2022 01:20:52 GMT
RUN mkdir /usr/src/srpm     && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-9c18de8662e5e9d6121bd1e9c0b0e64d5ecd6dc531f7887fad9209c406fb79a7.tar.gz"     && echo "46189d09ab457ff4fd0183269782c16602c1676f55e20a670f83a051d376b4b4  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2521bea679352d902cf8cfca09fc770b5655dcc5a1142ccc97bc67c0da92aa4f`  
		Last Modified: Fri, 16 Dec 2022 01:22:50 GMT  
		Size: 62.3 MB (62277141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e554b4cfa958701c452666d6fb250a74e229e8c33ebb75c2b49f5ae3585ec7`  
		Last Modified: Fri, 16 Dec 2022 01:23:18 GMT  
		Size: 452.7 MB (452734120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20221209.1`

```console
$ docker pull amazonlinux@sha256:1356b67e56de9f90322de2a3b3003a39aeb47ef3ef22049990d31b51151238ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazonlinux:2018.03.0.20221209.1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:a49663f3d88d6f88fce90736668bde9da147de60a8f1418c7f9973165891969b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62277141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c7da45cac655a5173a8970af5a1c6c075db388078bb204cea5ccbaa1a56f55`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:20:28 GMT
ADD file:aeff02a412eec40b7e2088801912f1cfc84db78256189500b286338b791c7818 in / 
# Fri, 16 Dec 2022 01:20:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2521bea679352d902cf8cfca09fc770b5655dcc5a1142ccc97bc67c0da92aa4f`  
		Last Modified: Fri, 16 Dec 2022 01:22:50 GMT  
		Size: 62.3 MB (62277141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20221209.1-with-sources`

```console
$ docker pull amazonlinux@sha256:c9b7d0462f3d9f924e9958a07559d555175dc0c03c8e12a48cd5db4d958db0f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazonlinux:2018.03.0.20221209.1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:3e21026ab020d1f390d0f7b35cf83f91bb4f7a8219cd45d53bf7f09d4df6d3eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.0 MB (515011261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c65483cadfaad0e8c9559b12bfca121754bb3040c9911402841d22eb712403c1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:20:28 GMT
ADD file:aeff02a412eec40b7e2088801912f1cfc84db78256189500b286338b791c7818 in / 
# Fri, 16 Dec 2022 01:20:28 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2022 01:20:52 GMT
RUN mkdir /usr/src/srpm     && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-9c18de8662e5e9d6121bd1e9c0b0e64d5ecd6dc531f7887fad9209c406fb79a7.tar.gz"     && echo "46189d09ab457ff4fd0183269782c16602c1676f55e20a670f83a051d376b4b4  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2521bea679352d902cf8cfca09fc770b5655dcc5a1142ccc97bc67c0da92aa4f`  
		Last Modified: Fri, 16 Dec 2022 01:22:50 GMT  
		Size: 62.3 MB (62277141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e554b4cfa958701c452666d6fb250a74e229e8c33ebb75c2b49f5ae3585ec7`  
		Last Modified: Fri, 16 Dec 2022 01:23:18 GMT  
		Size: 452.7 MB (452734120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2022`

```console
$ docker pull amazonlinux@sha256:62cc92115a0ba23ce26eaefe295b448e8319f69956828b04a80fa10481c0bb42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2022` - linux; amd64

```console
$ docker pull amazonlinux@sha256:54c95c89f52ff5e8e8da0b8d4408e5fce8da125c2133126c62c3891c31feee3d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57867562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe27e80432bdc1f3d43256a6f4fe7403de389900e77d9735f4569fad02348b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:21:07 GMT
ADD file:c2f3cc504734106dfe39dce615cfa085097451f0876c9574a8294c8494624c9f in / 
# Fri, 16 Dec 2022 01:21:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f692b7ceefbf778187c80c39b96d604e39ccf4a889e08c5f052481134db22ae1`  
		Last Modified: Tue, 13 Dec 2022 16:21:44 GMT  
		Size: 57.9 MB (57867562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2022` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:3669122a8988d3e31ff9be240dec853482d3ca967ab548d87014b21feab8efd8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56712057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d4b614b086baa401c14864560843a9e861979ecd2edc0f5b40e7dd1212a7aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 00:41:37 GMT
ADD file:ff147b37fd20344db08d3808c57eecb4baf220c236bdadf01d19a61f2dd6327e in / 
# Fri, 16 Dec 2022 00:41:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f3bff8cbe57b20ad8a63095a2b0c5d31afccc39fd7fbaab9b0c483430b38429a`  
		Last Modified: Tue, 13 Dec 2022 16:26:02 GMT  
		Size: 56.7 MB (56712057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2022-with-sources`

```console
$ docker pull amazonlinux@sha256:296f9a40be483bfdec4dee2f3198cad37f2dff4928df55d4a402d21dcb401a56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2022-with-sources` - linux; amd64

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

### `amazonlinux:2022-with-sources` - linux; arm64 variant v8

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

## `amazonlinux:2022.0.20221207.4`

```console
$ docker pull amazonlinux@sha256:62cc92115a0ba23ce26eaefe295b448e8319f69956828b04a80fa10481c0bb42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2022.0.20221207.4` - linux; amd64

```console
$ docker pull amazonlinux@sha256:54c95c89f52ff5e8e8da0b8d4408e5fce8da125c2133126c62c3891c31feee3d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57867562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe27e80432bdc1f3d43256a6f4fe7403de389900e77d9735f4569fad02348b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:21:07 GMT
ADD file:c2f3cc504734106dfe39dce615cfa085097451f0876c9574a8294c8494624c9f in / 
# Fri, 16 Dec 2022 01:21:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f692b7ceefbf778187c80c39b96d604e39ccf4a889e08c5f052481134db22ae1`  
		Last Modified: Tue, 13 Dec 2022 16:21:44 GMT  
		Size: 57.9 MB (57867562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2022.0.20221207.4` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:3669122a8988d3e31ff9be240dec853482d3ca967ab548d87014b21feab8efd8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56712057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d4b614b086baa401c14864560843a9e861979ecd2edc0f5b40e7dd1212a7aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 00:41:37 GMT
ADD file:ff147b37fd20344db08d3808c57eecb4baf220c236bdadf01d19a61f2dd6327e in / 
# Fri, 16 Dec 2022 00:41:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f3bff8cbe57b20ad8a63095a2b0c5d31afccc39fd7fbaab9b0c483430b38429a`  
		Last Modified: Tue, 13 Dec 2022 16:26:02 GMT  
		Size: 56.7 MB (56712057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2022.0.20221207.4-with-sources`

```console
$ docker pull amazonlinux@sha256:296f9a40be483bfdec4dee2f3198cad37f2dff4928df55d4a402d21dcb401a56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2022.0.20221207.4-with-sources` - linux; amd64

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

### `amazonlinux:2022.0.20221207.4-with-sources` - linux; arm64 variant v8

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

## `amazonlinux:devel`

```console
$ docker pull amazonlinux@sha256:62cc92115a0ba23ce26eaefe295b448e8319f69956828b04a80fa10481c0bb42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:devel` - linux; amd64

```console
$ docker pull amazonlinux@sha256:54c95c89f52ff5e8e8da0b8d4408e5fce8da125c2133126c62c3891c31feee3d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57867562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe27e80432bdc1f3d43256a6f4fe7403de389900e77d9735f4569fad02348b4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:21:07 GMT
ADD file:c2f3cc504734106dfe39dce615cfa085097451f0876c9574a8294c8494624c9f in / 
# Fri, 16 Dec 2022 01:21:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f692b7ceefbf778187c80c39b96d604e39ccf4a889e08c5f052481134db22ae1`  
		Last Modified: Tue, 13 Dec 2022 16:21:44 GMT  
		Size: 57.9 MB (57867562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:devel` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:3669122a8988d3e31ff9be240dec853482d3ca967ab548d87014b21feab8efd8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56712057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d4b614b086baa401c14864560843a9e861979ecd2edc0f5b40e7dd1212a7aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 00:41:37 GMT
ADD file:ff147b37fd20344db08d3808c57eecb4baf220c236bdadf01d19a61f2dd6327e in / 
# Fri, 16 Dec 2022 00:41:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f3bff8cbe57b20ad8a63095a2b0c5d31afccc39fd7fbaab9b0c483430b38429a`  
		Last Modified: Tue, 13 Dec 2022 16:26:02 GMT  
		Size: 56.7 MB (56712057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:66d22a2b8749283aa0764e6983fbb8bf8c143511cf16c9773598acca2a1cd6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:db0bf55c548efbbb167c60ced2eb0ca60769de293667d18b92c0c089b8038279
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62341068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92310fbb9f4cb6ae7cbbfc7fdb22d61f35279bd4ceae30d7cf7dcddb9e5b2e41`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:20:04 GMT
ADD file:6ebab25a4f1aa82238dbf1a48f38d22c6421052d0d158cf88cbc1a4d01b5c5c1 in / 
# Thu, 26 Jan 2023 22:20:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1e78b99dd1fd1031c6513834c4b5f594fa3cec5d06cdeb4b65ee104180bc0d4c`  
		Last Modified: Thu, 26 Jan 2023 20:44:53 GMT  
		Size: 62.3 MB (62341068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:latest` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:edfe6cc6ed773f9fafef779b8fe925b127c3e811e46367b3a851536a48d6613b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63964642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa2bfcf82b27a574cd54b7a50d459fa2cacc70b68410e0f46cafa32f1319c65`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jan 2023 22:39:30 GMT
ADD file:1b056f516caefc99e89cee1ffa2d3b98a54ec5756d3c54b0b1c75c6ddfa9e1ae in / 
# Thu, 26 Jan 2023 22:39:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f211bebb41ee40fd8a6c26d9c71d47a936d9684219f14a2679e8f57c07bb49b6`  
		Last Modified: Thu, 26 Jan 2023 22:40:24 GMT  
		Size: 64.0 MB (63964642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:62b13a9eaba6c742134ffc4fd47fa4074441831519ae4076a3b4b2adbd197448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

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

### `amazonlinux:with-sources` - linux; arm64 variant v8

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
