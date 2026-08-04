## `sapmachine:25-jdk-ubuntu`

```console
$ docker pull sapmachine@sha256:27ed14c018a0c0d7de2af2ace7181dda1d8bc6b7b5ff823830bd614b9650c4b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:5cd614073ac806aec3d162ff82a694da465b7389f74270e057122508c23cd833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257207262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36aa780963783117376b42c9a9c5aea1ca107c3b3b54add31963f1a51158d6d8`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:49:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2cfdd251760c3ca9302413438fcba38b6553a177f24e7575b7febe6bbc8fa0`  
		Last Modified: Tue, 04 Aug 2026 01:49:35 GMT  
		Size: 227.5 MB (227456153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:06b9b3b91ec6be8ddd1ac4590772044d891d326fe2884e3c15fb3da56d78cfcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2614357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140c37d5273a2f6d77a4411bbacbece42b4c3e78dc3ffa23aa29703d4e76925e`

```dockerfile
```

-	Layers:
	-	`sha256:75b7ec31f1c1b8c0f8b75c0d913d3b610d43951199abf7655b7969e7b2ff27ad`  
		Last Modified: Tue, 04 Aug 2026 01:49:31 GMT  
		Size: 2.6 MB (2599515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf52eac3304e2ad8f85cd75fa5a1ce1e7430082b094d1e9349a65dc5ff375e56`  
		Last Modified: Tue, 04 Aug 2026 01:49:31 GMT  
		Size: 14.8 KB (14842 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a4cc3f7c639919fe4f0762fa5a8a83e10334477064b3a8da8cc150ee719e04b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251705432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138e0bed08cd4930351a82483498b7fad07cff4893e329b487461f9ebcaa1cbf`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:49:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d722647aa385914e21a1a2f7ede5bc518675ba45d0e2fd08681fec0e1cceed1e`  
		Last Modified: Tue, 04 Aug 2026 01:49:42 GMT  
		Size: 222.8 MB (222818614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d4903c32be2511cef95a41c0e6fdb80684f4a30c814f94eb67ad8612d17f11e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5448e0cae57b674c07471bae7b3de9793f2639153d849386b77b9a2b071042ad`

```dockerfile
```

-	Layers:
	-	`sha256:9a0ee79ddf3748ad52f0ea54ece8c21ca89ed4dcf756bdbb936a079fb74b0599`  
		Last Modified: Tue, 04 Aug 2026 01:49:38 GMT  
		Size: 2.6 MB (2600208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a23d1d2a1c6a8c078e8aef588cd221bddfcc3e8e231c554ca61b8c84e33a5bc3`  
		Last Modified: Tue, 04 Aug 2026 01:49:37 GMT  
		Size: 15.2 KB (15173 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5fa302fdbed8c83c4914a6bf93f754fa145c1bc958d27e41bcb2e9a2325aa952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257622911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85646ab50fdc43d6de016fc82c94d9ef36feee12e3d145a384e32d46866c1de`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:27:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:27:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:27:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a191c3b9e8629af8de5b2d97a37921bd9124f5264a2c0ba6a8d73a599a2ff`  
		Last Modified: Wed, 22 Jul 2026 18:28:31 GMT  
		Size: 223.3 MB (223309435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0a65a6f48b83bead087757a72dbe554b1ea80644dc8709cc41f62e4f51170726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2611513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c0a199395cf51c83966a3ee58dbd59cc502ce82cf9a51f76600c5c32f57300`

```dockerfile
```

-	Layers:
	-	`sha256:88bc926e76a4183a66e94900234b76489852f7582b552a241c64197ec2c3031b`  
		Last Modified: Wed, 22 Jul 2026 18:28:26 GMT  
		Size: 2.6 MB (2596513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce9d4a3f39beda20c38f3db27e95102c3819d860b0176ec6aef006442deeb958`  
		Last Modified: Wed, 22 Jul 2026 18:28:26 GMT  
		Size: 15.0 KB (15000 bytes)  
		MIME: application/vnd.in-toto+json
