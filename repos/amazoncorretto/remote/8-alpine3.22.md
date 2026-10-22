## `amazoncorretto:8-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:2e7ab134ce54a52ff4f7126806ec3ab5f2bbac244ab82ac6d50605eb85b36449
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5918e023d275188545de561f11addba548068fd42de7efd68e7a7fa50dc5e095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104619122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800fcc4fe65c836c130b6411f08eba4384490ffe08e0016d8f60836dcc428a50`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:34 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:14:34 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:34 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f7a42d8019a324b1edd57e8517dcc02a6bd5d3eebdf563891309e66385c69e`  
		Last Modified: Wed, 21 Oct 2026 21:14:48 GMT  
		Size: 100.8 MB (100824765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a7603efac1ada3e9dbdfc68ec2e486e0cd65f5a87d36cd948767e7b11eae58cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e688cc95ef2ed4dfce6eef89e8e21c14f8027d6081dc33f66515e93c6336cf5`

```dockerfile
```

-	Layers:
	-	`sha256:c0f1ad6596ca980f630b01228a647fab76d7997b84a5c732b0f7a2c907c886b8`  
		Last Modified: Wed, 21 Oct 2026 21:14:46 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97245507676515eb8e43f3a6d8fd2173e98410dafcaa3e2b983475b6cd4db5c4`  
		Last Modified: Wed, 21 Oct 2026 21:14:46 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3293c46e4c859b70ab52dd6e0d358c06fbf69054a01a053267df71f2e64ff3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104791596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00697165c43345947481cb910fe60f1b283c8801754b0c30775bc7f7a2f2d5db`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:57 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:14:57 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:57 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2988a188d8a0ac218d178553398c6a0a508668418125ae9a3041c628a45e5edd`  
		Last Modified: Wed, 21 Oct 2026 21:15:11 GMT  
		Size: 100.7 MB (100664215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4fcce5ff8a872b2b05205cb7523d0709fec7c8d2664627c4fb74b140233389b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e45f76136c71cafc2347c6f0e55b9e421d014113a308042f44ea917f19feb3`

```dockerfile
```

-	Layers:
	-	`sha256:732e78564de14091298786a321e16a0c8b1290083bb46fb673c05f7acdb906b1`  
		Last Modified: Wed, 21 Oct 2026 21:15:08 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:023ccae2a07e1fbeec743e37be77de3a2861f48c2004daad2f8868e7d730b2c0`  
		Last Modified: Wed, 21 Oct 2026 21:15:08 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
