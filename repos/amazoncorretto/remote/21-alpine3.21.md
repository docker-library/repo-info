## `amazoncorretto:21-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:db9cf80e12cb6a02c31c88c9fce10cd9ac19f9c96dc3afc857de82fcf9830eae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9c996a5e32d2bb9e8c22a2eb0f505f12c1a008fd2ed25c9b737280fb1de0d440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165803444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4759c017dff011229e83d3a326882c549e5c688ac141a30ad5d921ace19fab`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:55 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:35:55 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:55 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bc7d11b648b3c49f9d167497922a010f8aa2cd655004f75c373b29f0622d4f`  
		Last Modified: Thu, 17 Sep 2026 21:36:14 GMT  
		Size: 162.2 MB (162177424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8382a355ca004a69bef35564aa5b1db4116e7f7ee7bc5cc4388337f6c018c9d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5906d8b31a1c29a68bd728e1a25cdffbf8e2a40d6bbb0280e5ef6e4ed439c584`

```dockerfile
```

-	Layers:
	-	`sha256:c026bb51690564ca0cf1831d30a42914d2357a80086806823952336ae0f69393`  
		Last Modified: Thu, 17 Sep 2026 21:36:10 GMT  
		Size: 587.1 KB (587114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c055286ac78a5c9e0fb4ad1b8a502a3d8f3e4d4ac4ce6bc643d66c8a843a661`  
		Last Modified: Thu, 17 Sep 2026 21:36:10 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bcd87177d76e81ea2db135987fba32652cb1131f0514c2d63d6fc8f99d742e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.1 MB (164146405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b0f93475e2c22fd18439077848105274527c88f2433aafcbce9154ca7b5ad9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:01 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:37:01 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:01 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ea3a95920613dd6d2923e5f6a9504680c370f926630b4bb05884e6cd62f120`  
		Last Modified: Thu, 17 Sep 2026 21:37:21 GMT  
		Size: 160.2 MB (160171904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4dd15a3efcce39716f7230974abfb46f2c7a4b32799358a59fedf1fe3e6c3ed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.0 KB (596011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4453c83a4a471715587971fbd08c580fe88e5f8d9386eefa9503135ee49018f7`

```dockerfile
```

-	Layers:
	-	`sha256:03684764af0a3c180f4819113cac6c4f1352f66ecff2807c654a892bf77b5232`  
		Last Modified: Thu, 17 Sep 2026 21:37:17 GMT  
		Size: 586.5 KB (586533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed058b93711421cd96137fe4d93435881aa2ef11527629cb264a5d9b21100b0d`  
		Last Modified: Thu, 17 Sep 2026 21:37:17 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
