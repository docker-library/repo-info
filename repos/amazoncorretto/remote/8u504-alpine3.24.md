## `amazoncorretto:8u504-alpine3.24`

```console
$ docker pull amazoncorretto@sha256:ac85517bf16f6221757d044428b8c44c8f906e52eae583d4d9d2e9e1ee5517c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.24` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:eba487e1e2737bc74f058e5db13f49ac3dfd692a7fbaadfaeb8a042896d9d52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104680188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09a156f062113e363d0ab45ce061450bdd05717b32e9ede0806423ec3f5fcf8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:53 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 22:55:53 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:55:53 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:55:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:55:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c414546e970bd8b88535ad90f9960598408b0163480b33f3e4c48b8666fd85`  
		Last Modified: Wed, 21 Oct 2026 22:56:07 GMT  
		Size: 100.8 MB (100827079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:26b065920074dc38b718020bf2955309d4a567495710419a0dfb3176592e0781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715418b1c489840d5a0d97f5c5d8284ae3138f93a6745eca4770468c794c28ab`

```dockerfile
```

-	Layers:
	-	`sha256:e702516c1f1b7bab0b2e301eed5737ffc89b33ad7391c441e327b8e88e219176`  
		Last Modified: Wed, 21 Oct 2026 22:56:04 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21180fd74b42f07f10b0213b0440275de9412493dd364586c669583b9d823903`  
		Last Modified: Wed, 21 Oct 2026 22:56:04 GMT  
		Size: 10.7 KB (10652 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5d8fb86878757aa0802d9fce32765f48588253febb0cf56b942f17c17747bdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104853199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ca4f11de89b8c98d390b919f3db78bd8306afc391c1e0ead59effda607fb7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 00:12:18 GMT
ARG version=8.504.04.1
# Thu, 22 Oct 2026 00:12:18 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 22 Oct 2026 00:12:18 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:12:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 22 Oct 2026 00:12:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4948cca99de4e5f79cbc125f7ebc26b69c866fa91dace98073b3e3854bfafb40`  
		Last Modified: Thu, 22 Oct 2026 00:12:32 GMT  
		Size: 100.7 MB (100662711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:50315dfd3b2a78667a23b2b70266a40a1919ae05e22267d4c65118a630c5ab3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675831b6e110f80fac0b2ee8666fa5a6ce169b0da99da2f3c4d717c4197947f1`

```dockerfile
```

-	Layers:
	-	`sha256:b067e2ab23767cc331204402255e8fd01fcc1e655118e5f34746a3c3c53bf9d5`  
		Last Modified: Thu, 22 Oct 2026 00:12:30 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5528cc4b7f634f41fe66fcf5f205dd4ec88403223948bbf448a0e07810a62d2d`  
		Last Modified: Thu, 22 Oct 2026 00:12:30 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
