## `sapmachine:21-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:b19a6d7135a60e3053f170b77844eb7da3ba774fb27160bd7924b75760af1d9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:505fdbbcea628290ac783cd489fe686ae66e1c4ae129f45e7b03f2b4a091ed1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252137449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5273874268295118a9b534f87c678b23d3c12b5c9f40812f9e84b91cdf75b831`
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
# Tue, 04 Aug 2026 01:49:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 01:49:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a45c3f957a01bcc066bf637766789b89b695995b8487246d7194b749d11e0e`  
		Last Modified: Tue, 04 Aug 2026 01:50:20 GMT  
		Size: 222.4 MB (222386340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0a072842d0f1228980666d273ce2cabee1ccbb81e56f5fa6a10924f4ce5c8831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a04f983d3846ae7c628eeb3f6ab20f34e4fef7431cdd8e74d72a89f22e9a725`

```dockerfile
```

-	Layers:
	-	`sha256:f9e97661e219553978df289b3c62a5205dbcbaffa7cf5ec02992655f108022df`  
		Last Modified: Tue, 04 Aug 2026 01:50:15 GMT  
		Size: 2.6 MB (2607825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5326c51c397bcf622d22a9e4feab060dcdcbf34502eb17998e5705d40f8703f`  
		Last Modified: Tue, 04 Aug 2026 01:50:15 GMT  
		Size: 12.6 KB (12607 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d39ea64ba43719ea975be4d9a8f7c125b0c7aa790a8e4f7a7804f2a040b7c698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247089155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b474a2607a38f4fe479f892373e6e599db59ebd323dd33080d583d8d12312b9`
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
# Tue, 04 Aug 2026 01:50:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:50:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 01:50:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb81c1294b68cac974981d59e83b2edf604c18df5cb371e474216354a655e8e`  
		Last Modified: Tue, 04 Aug 2026 01:50:36 GMT  
		Size: 218.2 MB (218202337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6bcd266aba4e43f465bbbc47e6d1a0600d2a9167753834389348636055f64dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfce4dc2d4518c7da4acd3c815ed73d913d9666bfcd0d03c2f399afef5e82617`

```dockerfile
```

-	Layers:
	-	`sha256:8b450d71ab14355aadf751cd64d5d1a3fb9d4e2da171dec406d9e1094427a1c2`  
		Last Modified: Tue, 04 Aug 2026 01:50:31 GMT  
		Size: 2.6 MB (2608437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7531076711164f62865e5212da647fc3de515658fedbd3a3413e2d9b548a793`  
		Last Modified: Tue, 04 Aug 2026 01:50:31 GMT  
		Size: 12.9 KB (12855 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:8bda498112865fea343fd075f638d07492dfe165545a9929be7563277e20ebc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254317502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10685d76d4fe52321b951ce0693a71ca877d746d80015d8bf1b3b450db4c6c94`
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
# Wed, 22 Jul 2026 18:33:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:33:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:33:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be621348d6ef16e4cd04dfd87b0c0589245c6727e726836ba71a300b3086a2e7`  
		Last Modified: Wed, 22 Jul 2026 18:34:22 GMT  
		Size: 220.0 MB (220004026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2e01fbb7f023276b7a0b8ad4febcf37a9115ec8b6cf7c4c449bd213b605dd912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd18f01c5cb55b86911c08b2e8d1a7a7f8272047239aaf6da2b977dc7f609971`

```dockerfile
```

-	Layers:
	-	`sha256:3dc1196074347b838177b6bd54723c26766a2a63cdc3c445c9e8e5e0b4064176`  
		Last Modified: Wed, 22 Jul 2026 18:34:17 GMT  
		Size: 2.6 MB (2605399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bedd0299b4d58f2dd513b270b265278a8791d9870124dd8a5cf853ecb6fa91f1`  
		Last Modified: Wed, 22 Jul 2026 18:34:17 GMT  
		Size: 12.7 KB (12723 bytes)  
		MIME: application/vnd.in-toto+json
