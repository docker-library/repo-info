## `sapmachine:21-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:7b210c78e01205b729b217644c638ff1a5f520d87aa85139b9ef0f488b7e73ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:6d7a260394dd912fa7593e56edba24d30203fd81fbc677f75dabf7b9d2bbd95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91728136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec30b5a8d45c5bf39e15faf5fb7dcf6c6717a8a6b6369117ac5314e717a6353a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:57:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:57:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:57:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c932783c0191c59c8ea1cd9fe6f8da8261230b12b5f54d0219d8a6242d31f6`  
		Last Modified: Fri, 23 Oct 2026 16:57:14 GMT  
		Size: 62.0 MB (61975660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ffa33f60e20ec1fe10701a5e31d3b42c234ee759c105b1d94b06cd5fe21b09c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f1e326f305b1626bbad1a5db18baa9da03b298099222cc1979911b1af56da3`

```dockerfile
```

-	Layers:
	-	`sha256:21a13e1ebc9865c6122b567e9e4b9f5c362488b1d0854dd358e1d4d991e85ea8`  
		Last Modified: Fri, 23 Oct 2026 16:57:12 GMT  
		Size: 2.3 MB (2296649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91b3aa5398210a7fad2e2793f3db4be5e36fb7bfee58d97dfd95e1ab986090c8`  
		Last Modified: Fri, 23 Oct 2026 16:57:12 GMT  
		Size: 9.6 KB (9647 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:554ee212d96b45fad6c914ca9fc1521dd7938e8718290208efc6199dbade01fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88822912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf7fbb7f07c42efc4289b03d7288ac2217dbb991aede456ee167ec9134c04f5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:56:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:56:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:56:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0760b790876126e7c238d652e57b07b78f47b04c959176a1168ec7249dc5c2`  
		Last Modified: Fri, 23 Oct 2026 16:56:17 GMT  
		Size: 61.1 MB (61138189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6476fb120f54951d5a3169a4cf207cd0fb9a7039d01810c015d30d73e7d0ffed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61eaa6010d45e514abd4578b94901889482d498af28421e8a41018c866ea0a32`

```dockerfile
```

-	Layers:
	-	`sha256:073b5571d452af95dc319fdadb40e803dca4c8d1e09c9a27674b0f501d36a19f`  
		Last Modified: Fri, 23 Oct 2026 16:56:15 GMT  
		Size: 2.3 MB (2296321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12afb55c45fbf9f5a3d67a7497d6073a11c8e0c3748fbe3cd33d5a810417543d`  
		Last Modified: Fri, 23 Oct 2026 16:56:15 GMT  
		Size: 9.8 KB (9751 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3bb52acf70aab287303139b0feb7b5715b242b1921b1c355454bac3c2de1ec37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96174262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568e9fa3860365dd1cefabb311a9fca3179f48e07ecb40f076586547d43a2161`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 10:07:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:07:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:07:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f048b32390c4a82d30c68d4ba4e0dbbb5661d2d6a98334537cdabce1895e69c`  
		Last Modified: Thu, 22 Oct 2026 10:07:52 GMT  
		Size: 61.5 MB (61470625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:50e775f9d800758d711bbd72b04c24f462377792649caf53acff9e66da4eaa9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2305722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437663d462dab771427458b622f1e7dd83efd3140caf8b977cc8952e84028e16`

```dockerfile
```

-	Layers:
	-	`sha256:e0c5260d7f51c003e841136bafbfb5256b1e2837e84ddeccc415f563ed414032`  
		Last Modified: Thu, 22 Oct 2026 10:07:50 GMT  
		Size: 2.3 MB (2296059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0801d622adef3499b3eee311b6ead5b56888d143ad37830ae495ceba418a9d54`  
		Last Modified: Thu, 22 Oct 2026 10:07:50 GMT  
		Size: 9.7 KB (9663 bytes)  
		MIME: application/vnd.in-toto+json
