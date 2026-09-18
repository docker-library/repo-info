## `amazoncorretto:17-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:2454a943be0fb23c387d3800646b7372f8906e1ea1843d2b850e9b420377d00c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f64ad13b09002dc08c2dffb584c6a6c6c7464f2f574a3caea5d2c8a3817d88d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152558267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d289f61675d612ddef0dd3e2008fcb016b81cf4416e32ccbd43f8397cbbbf527`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:20 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:35:20 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9067e2bc07770224a03d939ee9773632c33e43d763ef2b3e70181d0a3fc0b488`  
		Last Modified: Thu, 17 Sep 2026 21:35:36 GMT  
		Size: 148.9 MB (148932247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:58812f6974ff41786d5aa488d65d9a6020ef2592f025b44c52ddb4e2eb40393c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ea5c3c8f0056e315cf38dcac7a77fd356082d8c8a7b0ed3489d8b5c6c9f519`

```dockerfile
```

-	Layers:
	-	`sha256:ebedb755b03f22106bd44b3005a5256339abcc2324fd433a886fd045f081ac5d`  
		Last Modified: Thu, 17 Sep 2026 21:35:33 GMT  
		Size: 587.2 KB (587213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb39273d621189b5629c57bac804d59f2109c2811670a1e25e5990dbfbad32a8`  
		Last Modified: Thu, 17 Sep 2026 21:35:32 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:10c97d3861eb9cfd1993eb52cd76dd7d4f81ca6d1d4bd71f2ea8e53aee5760eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151328680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17e5d4488f3c614a6d10c7e609d9cca9a154f806e53c6c47b02a55b993c928`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:32 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:36:32 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f87abb6469d1da47a0afb2a8f6b67e8852abf4c467d1e3e1255c87505bb952`  
		Last Modified: Thu, 17 Sep 2026 21:36:51 GMT  
		Size: 147.4 MB (147354179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ebc732446638d6841f1f38404d5345e21ada0b2fcd61395a4db3598299c93515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b1b126c55c727211a2b1dae809ad9c9e51c5c1ade4969aea982c077ce4f282`

```dockerfile
```

-	Layers:
	-	`sha256:78a3d2d83c22a1bcb6423ce5cc7f60ed1fc284926d0beb1f06b40c976172942e`  
		Last Modified: Thu, 17 Sep 2026 21:36:47 GMT  
		Size: 586.6 KB (586632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcab15939d3f59e8ae8caa590ee5d4a8a0b7ac405d2f1e91c1762c9f252996bb`  
		Last Modified: Thu, 17 Sep 2026 21:36:47 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
