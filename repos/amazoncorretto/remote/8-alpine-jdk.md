## `amazoncorretto:8-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:cab808af5deb052226b459e99347ab871dae2b8a7165744e41ceae2694b16900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e9503c30a571f154edd062fb629d98a79f2739acb5b258e7ea5145c0a62e6b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104721216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4a998dff32543b1dad8bc9f8570fad08723309b17373a5e794d8c66a03bb94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:05 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:05 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166a54335e11222deaa4cfcf51850137949ce2b7730d3d126075eb0bc46aa486`  
		Last Modified: Fri, 23 Oct 2026 18:07:19 GMT  
		Size: 100.9 MB (100868107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1a7bff82bbd9c09b24b2b57c5c2910f9ba1fd90d6ff42ad587025eca8a643dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33990e2c03d89adbf928ae6de2bf82412b58ef72f7919665f4af154eb7733941`

```dockerfile
```

-	Layers:
	-	`sha256:f7080a1d46ab2ae6d81d9f4d2f16ecb2a21582a8c30fdb01ce7560f121610304`  
		Last Modified: Fri, 23 Oct 2026 18:07:16 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5a3fe326ec3b9a404224f9daa412d992475907e33b09bca51f1314e28adc74f`  
		Last Modified: Fri, 23 Oct 2026 18:07:16 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bd5d736a159941be725d2d925673071fe495dcaf6d95a71c414fe61c027cbc9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104888239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f92b607c652eb9486c71c836d774fed112488ad333a049dde646c0fe3da7db`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:58 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:58 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:58 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:06:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7d4160724892b437112ea9f1d35a800108f0fe429cd5c689ddb9855b8beb0b`  
		Last Modified: Fri, 23 Oct 2026 18:07:12 GMT  
		Size: 100.7 MB (100697751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3a487fd45dd6efa795f0a4e3e3bdb2fbf06131b0f9f6beaa41c4289c1a9f60a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85bd0ee18de27532339862fc86e66d92a19a882e19c60bbe96930d3a9897df19`

```dockerfile
```

-	Layers:
	-	`sha256:90b1610073336ebaf64a272afaba5d72365ccee179686db9e54a80c7d669ad41`  
		Last Modified: Fri, 23 Oct 2026 18:07:09 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47f752c1b07f6576e3c680cb69d7711744960fd807e36551c92c93bb6b2fc439`  
		Last Modified: Fri, 23 Oct 2026 18:07:09 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
