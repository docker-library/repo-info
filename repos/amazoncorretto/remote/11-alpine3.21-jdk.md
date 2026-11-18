## `amazoncorretto:11-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:e84708879e2585c6210fad6604f2b966557637a5eb66fca6511a65431f2e5072
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dd2a542cbf2a0b2314b1cac652c813bc60a0180baf57927d317e97f70a2ca886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147647192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfeffe14dc6c6cfbeeb1a2b3ad59b70a6e1bf70528f743ddd4ebcfbf5fd4c4a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:20 GMT
ARG version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:20 GMT
# ARGS: version=11.0.33.1.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:20 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb00e55ddd19469964e5534eb34892d9c85223d2774f04cfd1c5b475b3d9cb49`  
		Last Modified: Wed, 18 Nov 2026 02:46:37 GMT  
		Size: 144.0 MB (144021790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4753944c513ec1d518141a5bff9717465032b1c9b03ea901d7c8dfc6e8985278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be167b79a07351306918261f2d8e8f48f29c7266c7f13dea86655f4fdc2e502d`

```dockerfile
```

-	Layers:
	-	`sha256:259d2ead1a5f4d5237c384ed7538dea5ce1e8243df2895acfd36a6a8a4a450e3`  
		Last Modified: Wed, 18 Nov 2026 02:46:33 GMT  
		Size: 593.4 KB (593373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b73b406aeb15b19f697a783287327411e914b11a22164f189f7a82bece69b8`  
		Last Modified: Wed, 18 Nov 2026 02:46:33 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3b409b3fdf70852fd28e6f969a44d18f410cfc4398e534c4636d4b78678c81c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146361689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746128aef26be344a33aa8354c6fa305536e22585f143d096edf1b9d2a635020`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:33 GMT
ARG version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:33 GMT
# ARGS: version=11.0.33.1.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:33 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9287644dd5e48ceef40dc5fe5c6565fc6f04029921711d299a2c9d35084c9100`  
		Last Modified: Wed, 18 Nov 2026 02:46:50 GMT  
		Size: 142.4 MB (142387266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:89a4208d92e71839ce5bb9f095ea755df91c3d3cddb0ca1e4376e44a84757139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4caafbf7f95bb99e1bae591f7720522a06f61e20a9c397b55bc9ff32e274732d`

```dockerfile
```

-	Layers:
	-	`sha256:c5c8ea50d478e8f0d82dca5cc517212288bbf1c4de1afa9c7a3ecdd821d75c67`  
		Last Modified: Wed, 18 Nov 2026 02:46:47 GMT  
		Size: 593.4 KB (593429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69f9fa19b27062e8a1e31e485b1dbca1719e4398cb9cee0846375ad7f3f81f07`  
		Last Modified: Wed, 18 Nov 2026 02:46:47 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
