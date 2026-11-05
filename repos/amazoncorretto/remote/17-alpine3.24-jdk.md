## `amazoncorretto:17-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:7449010fa315925ded54eca9008cde8b69124b57657cd6e595114e5772516b12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9b9d7762db9c51bc1c95607749dabc5ef514da72ffbad32642a42d3b6921283d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153068913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4100e0bccb2827740f4f96ff7473c4fd40c814e9b23a0f4853beb1251b914b35`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:15 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:13:15 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab8ed2e78889c66f105bfdd751dd8febb071910eb781f5cfc46ab14902ef024`  
		Last Modified: Thu, 05 Nov 2026 19:13:32 GMT  
		Size: 149.2 MB (149215240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7d9155c3e84983c7460e63781ee675b9e021cc48d10cb4f42b2f51e193f9186d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957fd6ca3f81c8d75ade9ed64ed0ee723b9a2c633cadc1f14879f936de35ff78`

```dockerfile
```

-	Layers:
	-	`sha256:92f6a1f2a35bbf282e3a9ad2e0c0de3da9c1dba465e8c8946a3e04002fcf2674`  
		Last Modified: Thu, 05 Nov 2026 19:13:29 GMT  
		Size: 583.9 KB (583882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43fca294edf094a1e59398b9e1c094cdc04adeafc99a7c5b8413c09adbf4ee66`  
		Last Modified: Thu, 05 Nov 2026 19:13:29 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ec24a30445f0fa3aed37720ec416402e4e185c67ed2bccde62256d37819ee37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151872123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce31aa4f9a862cb582cfd48ee7e79c2897cb2c6767affd379516485abe3e4f5e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:50 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:40:50 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:50 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d6a7235c0fad660a7e405aee2f7009a381e3230b84dc137ffc73b27dbde86f`  
		Last Modified: Tue, 27 Oct 2026 16:41:08 GMT  
		Size: 147.7 MB (147681635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f1d46e7ad25fa928cca721242eb418394f94d59f75e3e242bc9293d2ee826853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251259cd30e17c3a9852b75bbaa44eb3688e66488550bcf198e9080f8d62dbd1`

```dockerfile
```

-	Layers:
	-	`sha256:e0e7f3fd90429cf62a42635ebbdef6bf51bbe46b774a3d24e144e4f5dd7f4964`  
		Last Modified: Tue, 27 Oct 2026 16:41:05 GMT  
		Size: 582.7 KB (582699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7587c93a5e2a6c15defb47a2faf93615ff4da2f0b170598c441090f5ee8e5f82`  
		Last Modified: Tue, 27 Oct 2026 16:41:05 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
