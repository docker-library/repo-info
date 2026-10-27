## `amazoncorretto:21-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:3f17d24532b3a48482de985eb94b5ef577a48aa509ef1546e2380ad36f65e2bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9f989eeab715610ba7809bf2a120f698fa6e20ef87d8552de30301d4fedb1ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166080541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e14705263f449f69374acb7f966436ccc2ce71154972c0f8bc84707fdc6bb5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:11 GMT
ARG version=21.0.13.0.11
# Tue, 27 Oct 2026 16:40:11 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:11 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa555a3443f9720c07fddedb25caf6776adec9c266bea5a52b7ab64fda5f6f72`  
		Last Modified: Tue, 27 Oct 2026 16:40:29 GMT  
		Size: 162.5 MB (162455146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7381452c32415fe616f62c2022dda671a259bdc840ac0c716ac198ca61cc5ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c649158a501e500ba163b56508c838fbd8dda3c81fbdc80d13dc9d4d6e2eed1`

```dockerfile
```

-	Layers:
	-	`sha256:e875efe1d0737bff24ac1020b4341505324d27932f693ae8d727200887eca23b`  
		Last Modified: Tue, 27 Oct 2026 16:40:25 GMT  
		Size: 587.1 KB (587112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e75311f708120b8f5f5a4a3a1aa34abc2baaaaf6af94d07cf3d0cc8bc07b28c3`  
		Last Modified: Tue, 27 Oct 2026 16:40:25 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9720898f527f272fc350cd22b7ee0f2f7957cbefe4c662ef64ca2a0be53b8f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164441850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3863bf5a0f9c709ff943e57b3fd617d513a2398b60bf0f8cd4f302ccfc47dccb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:55 GMT
ARG version=21.0.13.0.11
# Tue, 27 Oct 2026 16:40:55 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9aa8ab330b2ea88b04551b9f75ba425a33318dca4c323f56e327ff3045f27c`  
		Last Modified: Tue, 27 Oct 2026 16:41:14 GMT  
		Size: 160.5 MB (160467479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ebf602d784c5d56c14a900036654a014347cefec28666c5b896acf2ce7612354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.0 KB (596014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45016e57918deeb697d9b0fd347704bb8db9d5283ced7bdfb28bad2da9f9a01`

```dockerfile
```

-	Layers:
	-	`sha256:a70fa7ecafb994577b22a212f2f76ecd45f78e8a876241692a24c17fa4165980`  
		Last Modified: Tue, 27 Oct 2026 16:41:11 GMT  
		Size: 586.5 KB (586531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bae0ac5f40812b0b747afc5eaca51eb7720b95540c4d8a0239689a7b1f25a60`  
		Last Modified: Tue, 27 Oct 2026 16:41:11 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
