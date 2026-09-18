## `amazoncorretto:8-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:862aa62e938114b277ff21049f7aace9979a326df9db43212ac79d8bd837c179
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d04c098f5ea48e7d0a8afdcad9f8142da2989fc49ae597257ed47e5d41740f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45604055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9e1cb1586b25684ef53122d9405fc5dbfbe6a86e824e6193ef1c0e8c09e2b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:06 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:34:06 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:34:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:34:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be654de8c6e26fb9ea636de77e5269483cf5231783dc0f951cc94505f4acc4d`  
		Last Modified: Thu, 17 Sep 2026 21:34:16 GMT  
		Size: 41.8 MB (41811980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4aba031b49d59ebff669bee24806855557b51389e0064c2f57b52c443b43aadb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 KB (197149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbf1f0d289b413320bc6f7529e3c24c750a38608cd3dba12e205fbb5d3aec917`

```dockerfile
```

-	Layers:
	-	`sha256:757a2c480f4a23064832b171e409ee1d61783d40dea8eae6e1e87216641d0ca6`  
		Last Modified: Thu, 17 Sep 2026 21:34:15 GMT  
		Size: 188.5 KB (188495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96350fb6b162a44f16f5b2acbc0e69ff86bb0334343a062d77e510bc6adf8dd7`  
		Last Modified: Thu, 17 Sep 2026 21:34:15 GMT  
		Size: 8.7 KB (8654 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:25201c09fe91c6ab22d9d31d4f7b6b1a0e49b661200ff14420b86857a320cb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45689748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aac7bab4928a4d8c477d3c46a39764eacb9670f7b078acfe3fe3aaf9347f175`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:25 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:25 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:25 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad771a328238974be586d9d50e966f86c6aab5f641f70475bd4235b5a96fbbb`  
		Last Modified: Thu, 17 Sep 2026 21:35:35 GMT  
		Size: 41.6 MB (41566664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1edab69125ecb1ec7c35ee4d5b1d4c35d764db1180cff56dd5ab47c90b7946ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a766d61684be7384a6dfbe17d5c0253896397196d6b70fe658c84e9a00247e9f`

```dockerfile
```

-	Layers:
	-	`sha256:f763faed291d255ccfb867f5f62244ca24a18ae37ff49cce8094e4dc6b1673ef`  
		Last Modified: Thu, 17 Sep 2026 21:35:33 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08797304ac2a9562cd9ae0cd5a5a11a3386e779d5582c4e74a678c425800ab34`  
		Last Modified: Thu, 17 Sep 2026 21:35:33 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
