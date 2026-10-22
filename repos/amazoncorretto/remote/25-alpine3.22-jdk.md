## `amazoncorretto:25-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:08916f30597e5ccaf881c410f4cab180e41c8c9801ff0e63203138422e544d7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dcbefaa024cc5143fd99f26cb2c6d03f5e63cdd68f73ff2da41ca5f768e36f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185288243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb153d2eb71472a3b87d8cd929ce791c8f9a7624f748e203521fa84e7e381e1f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:02 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 21:16:02 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:02 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7ec578a8533ce2fdd0c03ab2edc44274e85fe79a3cbd60319e29a62a4e1928`  
		Last Modified: Wed, 21 Oct 2026 21:16:22 GMT  
		Size: 181.5 MB (181493886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6e85f5d78544f8ddd46b633f0c48f2365b8ca139ed4e319ad01b687b8d499789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.2 KB (602162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34173f012e9ce7fefc19e6740a30a6ff1b6f4289e465075ebc11e4bd9121d878`

```dockerfile
```

-	Layers:
	-	`sha256:74193a97deb26d6748b1b8026ed2b01a309d57e612c413c744e1335db38980d5`  
		Last Modified: Wed, 21 Oct 2026 21:16:18 GMT  
		Size: 592.8 KB (592790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca45f2e91b7063b64d241fcf4b3d4b83c77526528ace3707ad95528714082bfa`  
		Last Modified: Wed, 21 Oct 2026 21:16:18 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d415e60536069871a4a52e2fffc7e4584fc1ab3ee83d58fadaa39b76f9e0c054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183224956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d44f65ecc415343f35ca247bdd06e5d6750ba9960c78feaff9bf38fa331d854a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:38 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 21:16:38 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d410359f08e8507f986019daf0888748d4e4b35300fea8acadee1085e2dfeb`  
		Last Modified: Wed, 21 Oct 2026 21:16:59 GMT  
		Size: 179.1 MB (179097575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6b8febde0cc630ec4c9574d0e5ae326b7ae4a16c89abc6c1de4c7473a1cebe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.7 KB (601682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e3816fa0014d41a43c0271acb4ffee0700427690419baef7d82c51343db990`

```dockerfile
```

-	Layers:
	-	`sha256:fd13947e5027e63adafff1c0d0233f3199b1f56055d3d0af3240b879367dd426`  
		Last Modified: Wed, 21 Oct 2026 21:16:55 GMT  
		Size: 592.2 KB (592206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dc18aa4b75260f7fecf48f6401771dd18fe111739f504f9e9879326cefd6147`  
		Last Modified: Wed, 21 Oct 2026 21:16:55 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
