## `amazoncorretto:8u512-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:fa63f5b79644b5f060e649717d35a9e1bb94ce4311edf992de50f0abcf0b6fd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:77c8d2a11004889e1b09342336548f3d922417a987c5053fe824a616a5e16dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104659639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb69a81758570eb1c75785330c29a4799f3db0f566007db482fdf6da98620bf6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:13 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:13 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:13 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213d25effada6baa2a6728128e7ed29bc12795541cd6c61ba28722fa49eea5a1`  
		Last Modified: Tue, 27 Oct 2026 16:39:27 GMT  
		Size: 100.9 MB (100865282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e2e0c75137bb97088903c22141605f0e400a0074a30308a3713504ab4d6f2ea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14d166afeb8a3b6ff4f87171069e3c80a03ea9c2a9cb340eb62625a4556634f`

```dockerfile
```

-	Layers:
	-	`sha256:88ac4ec42cbc7a165139421a675571ad511c3c019222c1782debef167c00f382`  
		Last Modified: Tue, 27 Oct 2026 16:39:24 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ade809a32b8554b942acff012f4fef05d3ea9619a3c9a4d4b7a5e03b3e189177`  
		Last Modified: Tue, 27 Oct 2026 16:39:24 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f6f42d288d9c7f121305ba94ab8b7fd0947c8510c576d73559405130176c9cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104823589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2642d126d7d749433a7a3ef2679fa6d98ca9a1f137e7a16c2585dbaedbeed23d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:01 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:01 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:01 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871941f04810c3dad6575d6714997e9069028f5ac43a4924406a30feab35a53e`  
		Last Modified: Tue, 27 Oct 2026 16:40:15 GMT  
		Size: 100.7 MB (100696208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4342224b3acd49aeefad8f7f2da118c1f1a93db110cc2752192b5573b39c5662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aed508f3c8797cdd05fd55444ecd2378bb6426705cd124b5586169ff0ce5cfa`

```dockerfile
```

-	Layers:
	-	`sha256:6847cf721c5e13dd0fef56b8f51fed29eb24295bc8a692899d1aa654add2551b`  
		Last Modified: Tue, 27 Oct 2026 16:40:13 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119b12b09f75403f61727bf6214c05ded926d6602dec774f7c700b2e5c62be04`  
		Last Modified: Tue, 27 Oct 2026 16:40:13 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
