## `amazoncorretto:11-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:763534284d1f426f302be49c8b1714716039f4a333219869b283f0191126f624
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:afebb8372d845569d3fb91178f8cf88ed3e280dcb9888b3d0c0a99ad5c05d579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147802217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38fca1d8464ade1ad67bc10f17919584de638402501b62613d09b12a285698d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:37 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:39:37 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43480975339fac7723345706fdee530c6017e91707261b268109da988659da44`  
		Last Modified: Tue, 27 Oct 2026 16:39:54 GMT  
		Size: 144.0 MB (144007860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e41a9ece091a65d5fd5ec5bcbb3ab0ca432cc2509fb9595695c04f67ac2d25f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e022dc37b90fc61d509a243fe38f9a2390ab1c353027d9bfb62b8b725e5a00e1`

```dockerfile
```

-	Layers:
	-	`sha256:7ebe75a4d25f684b15a7b8d8c701fb4e5be088fee33cdd5bc109dc619ca6f9f9`  
		Last Modified: Tue, 27 Oct 2026 16:39:51 GMT  
		Size: 588.9 KB (588935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c298775dc3495163ec4b0b7458a70ba23f7a77bd0d10048976c4a2050586164`  
		Last Modified: Tue, 27 Oct 2026 16:39:51 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:653f04509a096c5bdb1b41384c1e589b30e4a1158d15fdf7e0f87a24b8aec90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146493741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56e45547e4e496cd94e4cb6abbf7183198d3ec608e74e39e0d49a1bc772634a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:26 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:40:26 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:26 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6891260d06a88ef63461e1933fa1136309af9d5f64ce03f90b6185b3592341f`  
		Last Modified: Tue, 27 Oct 2026 16:40:43 GMT  
		Size: 142.4 MB (142366360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fd254372d7b57936d779258fc92b17bccd817138fcc8eae418ba9ca4df695367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855e2553e27f5161ba21508a45c200ab6f50d5dd33505ef72187e5f3eb92b39d`

```dockerfile
```

-	Layers:
	-	`sha256:da6a52ca7787e1257a3c4565d2586bcca588443dfd26ee6e41f392da1df1071f`  
		Last Modified: Tue, 27 Oct 2026 16:40:40 GMT  
		Size: 589.0 KB (588991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c13efb6c70be5bdd9f50edcef7c743cd3c652c625d00826bf045ac14588a358`  
		Last Modified: Tue, 27 Oct 2026 16:40:40 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
