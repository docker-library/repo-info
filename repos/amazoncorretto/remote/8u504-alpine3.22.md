## `amazoncorretto:8u504-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:19bd7b9b2ab80bf20b3d809c41c70f2f54c41af17e44ef8b9ec81eebf32c06f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6821eacfb24716e2512927912a12d3d81fad8bc6682abcf4e69aab9fa99f47c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104616814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab85609f6809a10ffe26af95d25dda14f647ef3b15f9b5bdf16f053fdfd27782`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:05 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:36:05 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:36:05 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:36:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:36:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6794f910f275caa660df86da61cb55276aba67f6502873d9169aea62a5f2cb`  
		Last Modified: Mon, 05 Oct 2026 21:36:18 GMT  
		Size: 100.8 MB (100824739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:89a5a9a90ef11b330b97df5cde30029018276666134a1205c6d6b20ff64ee39a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c53d85474bdba21fe84dbd6f08a8c25a37aa6237897bc0431c0d2c8d392af4`

```dockerfile
```

-	Layers:
	-	`sha256:8263945ca163ed858d82a4734e4bd2c50848d79b4f6eefed48261554b5d53c71`  
		Last Modified: Mon, 05 Oct 2026 21:36:16 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bddd2cee0da65879f12893e45f5afd5271512c07e7715122d53634296fbde7f2`  
		Last Modified: Mon, 05 Oct 2026 21:36:16 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d501c6776741feccbb7f69a3f981f8787112395a8e8ed50297c4b7babf7b3820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104787373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792184d4c442e96ed21922d34fae942e54d350a3d5d178200a908594cc6de076`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:33 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:33 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:33 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:41:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15442dcb0b7bf91722dcbb69e527b90ccaeb8b05014d0d4538ef31c761837ef8`  
		Last Modified: Mon, 05 Oct 2026 21:41:48 GMT  
		Size: 100.7 MB (100664289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d2ec9b88b3477c710f1e8893d0ba08aadff7eab07adc38b16ddd47d6ecb33179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368bab05fe9a2b7e4cb1f0ee7f4570c4271f6f7e3705e37b7c4552eb782e17ec`

```dockerfile
```

-	Layers:
	-	`sha256:dddc90e34a50eb395c0f129651667d164481e0117b23cb81a05b227e52d15c03`  
		Last Modified: Mon, 05 Oct 2026 21:41:45 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:454347a21665c2ff85f062809c9828a32eacad6127de496e526147738e7fcf8c`  
		Last Modified: Mon, 05 Oct 2026 21:41:45 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
