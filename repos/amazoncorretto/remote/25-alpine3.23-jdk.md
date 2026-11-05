## `amazoncorretto:25-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:a9cb89d3d2d7d605cfbb401e1a09b5ea0c1b75cfafa0afb7feb518d43ef6583c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:de5fed896be28acd163ad4e5a6facdb094233801308066a7e6f45336b3f2a0b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185346701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3a5694ca91c0f5ef0de5e6d3d15010c85faff3d5371c1513792b30e3b3d156`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:05 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:14:05 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:05 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0efe3eba87b180a4396846bc34cc9c755a488f4da83ada88309f021b39d0ba`  
		Last Modified: Thu, 05 Nov 2026 19:14:26 GMT  
		Size: 181.5 MB (181494112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8201ccaa861d006e2e564fdd896b1eade47a757e9df9d700da374f23f856851e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.9 KB (600874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c027dacc02aaf1f324e3de4c3780001f8120052d580c291a6174ca758179a0`

```dockerfile
```

-	Layers:
	-	`sha256:30f1b786d97bf741cf8c84db648d0999915347d203652fa0617a81545cb4c1f1`  
		Last Modified: Thu, 05 Nov 2026 19:14:22 GMT  
		Size: 591.5 KB (591502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08b972cfdfca6a246f31aa29f2bcc27b157350e68c25dc7e878bfd63540362b9`  
		Last Modified: Thu, 05 Nov 2026 19:14:22 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d20385c062bb311da00a8a7f192e6d2928c9c98f894fe5628853a079b6604e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183267270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085c70061e33aa8f60fe35644d1becf17ccb22b436a722e2d5cdb57832d6d8ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:12 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:41:12 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:12 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54714a32819621827a4f2c4f26e734068b757f81976d32a8d40577bed6195153`  
		Last Modified: Tue, 27 Oct 2026 16:41:33 GMT  
		Size: 179.1 MB (179077776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5d9cf0b6a1b66c15d3f7ae63faf8d523534e3ea59af1982938d70839daf2a680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc29bbd3b97608b9191ba6e5a489f6befeeb030d2aecce2651a4ab96e8b32af1`

```dockerfile
```

-	Layers:
	-	`sha256:42b133ffbe5f1b7edf221c085a914afdfe24563f6232a1182318d4f93c50e881`  
		Last Modified: Tue, 27 Oct 2026 16:41:29 GMT  
		Size: 590.3 KB (590268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca41f802afca61f0c8dbfb0a7553a7d0ba10a45b29e75c1661b57f2f45c59875`  
		Last Modified: Tue, 27 Oct 2026 16:41:29 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
