## `amazoncorretto:21-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:9692776c483db8877029ea82127689198b5a0606e0c4faae4ff1874ca32d7b60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f321bebae4f10b05ac588893867aa8de9dec5106c01b807579ad1770a25322b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166092779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6eab420924f3f9a718046161ad8e661cc925c718b9e495ab11088632be302e5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:09:02 GMT
ARG version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:02 GMT
# ARGS: version=21.0.13.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:09:02 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:09:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96f29969e10d8aad7663158ccc60f5af9f8795e784d94eda02b51c4474e8d61`  
		Last Modified: Fri, 23 Oct 2026 18:09:21 GMT  
		Size: 162.5 MB (162467384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:85f280f148a22abf4470fbd3ac37d9687701de6400cc286acfd055df98452ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0389a05091b11e483f105caf2207dc32f1b65bba2e4352877c166623185adfa`

```dockerfile
```

-	Layers:
	-	`sha256:c93150859c070026ade5430ca7cb8fe9bb69ab4e8721c0e4ccc671e0e35d25f6`  
		Last Modified: Fri, 23 Oct 2026 18:09:17 GMT  
		Size: 587.1 KB (587112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df89c3e8b14771120005c3af78084c8eada009a14ada08e9ff4255874e7576ba`  
		Last Modified: Fri, 23 Oct 2026 18:09:17 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0a4dfbf8a46737156b0a29d8cd7520150785de2a288e0e786d45183b8a607ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164443021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51bddb636d66b8de720b650b720974526c84a2ec3c4a171ecc640e80e2657b26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:52 GMT
ARG version=21.0.13.0.10
# Fri, 23 Oct 2026 18:08:52 GMT
# ARGS: version=21.0.13.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf4a35fcbc31eccf8298d4082c13f36c52d9f438600bc11c13d251421d8fe50`  
		Last Modified: Fri, 23 Oct 2026 18:09:12 GMT  
		Size: 160.5 MB (160468650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:49bc70e48c50ee12c09d686c63b186a8874692bb75141d9352931be7de9e7137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.0 KB (596013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73581ada4466818a4bd0a9b262cb03461f556cb3db85264a432471b0d6b26fa8`

```dockerfile
```

-	Layers:
	-	`sha256:a7b77e73961ceab09cc48782f42ca2e6aad7883b2fc8173d61321e4faad8ab7d`  
		Last Modified: Fri, 23 Oct 2026 18:09:08 GMT  
		Size: 586.5 KB (586531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02f71d8e267f61d84bd5e66de22dcd8d20130901607f45083abff4f58923b63b`  
		Last Modified: Fri, 23 Oct 2026 18:09:08 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
