## `amazoncorretto:21-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:d77008562ab35d3de01174112a26df3a3f27dd6ded473f41c7d63fdac0d27113
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:63bdb2418e4c3243111061ee45c52f93859c095401ff1be58eab4c756b7fe465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166276895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afaf1c340df6883c7ffa816e16cefbfcb0989fd8d47bf7b76c76433b92af3926`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:12 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:12 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:12 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cfb597213e130e38208567f159a8ee2bbc8564ae74c343ba4ab15e3582893be`  
		Last Modified: Tue, 17 Nov 2026 21:34:31 GMT  
		Size: 162.5 MB (162482520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:348b7a8bfb9a2c176f861582e60925e1db90db0670a7dfa4166007affc745dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 KB (593065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095c0a751d70a345bad7378d69028e439725f2a8b6f94484370117e693fe72bc`

```dockerfile
```

-	Layers:
	-	`sha256:dc4655428a5a477beab35972e34a1d2c6d38ecec65a12e52d86a3c4948e6751f`  
		Last Modified: Tue, 17 Nov 2026 21:34:27 GMT  
		Size: 583.7 KB (583692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd67e9c8cfe508cb0fee865cb1dde79ff81fec51ce8985ad637ae6a9e6087e42`  
		Last Modified: Tue, 17 Nov 2026 21:34:27 GMT  
		Size: 9.4 KB (9373 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e8ca524afa0844ed86359e12fb026fd48bfbcbb7e8b62f9b30a5fcb8e7c63746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164619324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88ddabd87e56d0a0ce107bf66b085fe3fcb04a071612a1bb4c8b7e819df14cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:11 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:11 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:11 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a9692c489f53a3526dd6df9c131259e4d947e1c22d0cbe904ead40583e8581`  
		Last Modified: Tue, 17 Nov 2026 21:34:29 GMT  
		Size: 160.5 MB (160491939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:32203aada338954fcf2a1a260127c9606311953c360a5c0d75a8c3b5f2642d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 KB (592589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f08d54e966c5343ee74c6053b092ceb47888bd644e3fe4f9d5ae2a8ce06fe4`

```dockerfile
```

-	Layers:
	-	`sha256:2612f09afc795f16e1e383c22ef1fa7c080ef67d22e81384c49b63c21e1160e0`  
		Last Modified: Tue, 17 Nov 2026 21:34:26 GMT  
		Size: 583.1 KB (583111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09135b9766b6f9a5c0f525a37dd18a0ef4041745c26c60322c9e2d6d3872a1b0`  
		Last Modified: Tue, 17 Nov 2026 21:34:26 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
