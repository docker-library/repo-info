## `amazoncorretto:26-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:08e4f83dad41ecaa1374fd734f81a11568d4d96d53a09822df46c1805a6bb9bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e27cce13d4df5bcd7418bc90967a81dfda5a1b4f57179c52e17295caaaa82223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189294270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0acacb5f8acf83355a0c6c8fa6e6d6cf9f07a268b25fa3e37667f2f765a23e92`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:25 GMT
ARG version=26.0.2.11.1
# Wed, 21 Oct 2026 21:16:25 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:25 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5662a4748acd74de9d758ff4001ac83268dc55d8da31fa1261ea40653ead266`  
		Last Modified: Wed, 21 Oct 2026 21:16:45 GMT  
		Size: 185.5 MB (185499913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b2162c59c7846b0ddb245645d906ecff0c6c46790867e6cc03578e841e442712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (596975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f11647acc685371eb52a66b13b7f425cbd51df9c3b24c9dc735d920e39abed8d`

```dockerfile
```

-	Layers:
	-	`sha256:438edd270a060494d64a6f8a8385cb78d6495566f6fe93bc4f78fd2de8320cc5`  
		Last Modified: Wed, 21 Oct 2026 21:16:41 GMT  
		Size: 587.6 KB (587603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e20f4c70901490c6748715da171fcf0fb3c141882e11e6d787f3af2178fe1c21`  
		Last Modified: Wed, 21 Oct 2026 21:16:41 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f4678eb692d06f374c4f472e2fa7e72402992567f14ff983f4d9724cd78cfd0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187155214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ba4408e0152827732b4ecd2228e89899be6a4e0f210cdd77fb4d16aa1e0d73`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:49 GMT
ARG version=26.0.2.11.1
# Wed, 21 Oct 2026 21:16:49 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa441d4f4103c1b66fa582a160471aeac1d271f24e55ba5cd2dc04e634fb276`  
		Last Modified: Wed, 21 Oct 2026 21:17:12 GMT  
		Size: 183.0 MB (183027833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0403e4bc15fa67291db437911fd6b5c3f70217e2f2fcde734b88381abe95f4ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b92710f1cb7b10a4d5257062bde73c0f73df2c092f559d68a119df0cd30aaf`

```dockerfile
```

-	Layers:
	-	`sha256:456ed8ff02387aabeb3ab18cc50e6562e48b37e5b960db99b07c579b3749cf6b`  
		Last Modified: Wed, 21 Oct 2026 21:17:08 GMT  
		Size: 587.0 KB (587019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c98106eaf506014d0520519725653c198e330b79b7c3d719ba86e64eac7d4f4`  
		Last Modified: Wed, 21 Oct 2026 21:17:07 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
