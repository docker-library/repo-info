## `azul-zulu:25-headless-alpine`

```console
$ docker pull azul-zulu@sha256:b7cdc43961d71572a4909058c15e521a78c59cb60a0148d4e062c26450d37207
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:270ec74c7eb0a803c32179e93d477cb1d01000a945bf6275d6fb07963929ed98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181048222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1f3dbae9a931842c9bfa8248865364c16b447e37ab759c1bf3179eac7dfe9c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:19 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:19 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.5-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:02:19 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:02:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e466c57d4ad83ca8081f1766b9fb39d63fa586dfcefba7f724463f61128778`  
		Last Modified: Fri, 23 Oct 2026 20:02:36 GMT  
		Size: 177.2 MB (177195995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e059628678e6f7d4e441aa7525832ebda3f1d0bf654342c62bc6a7e2fdcfbb24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12643b0c808796f7ff3f7ff8bab959486432e7c975d1f63b3f33946ffc103585`

```dockerfile
```

-	Layers:
	-	`sha256:8066546e1aba43eef3a0c6f661c644d772e0d7cf5ef1e3a7b8ff7fcf482c4206`  
		Last Modified: Fri, 23 Oct 2026 20:02:32 GMT  
		Size: 7.6 KB (7578 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2c85774dde538501ce9a628cef4235b40e2acc92b067dbf20dac4bf0b052b598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178939528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa55896b3a6fa17cf18eb2b4dadf79cbdc544a42432c183c8bce8a1bcffd958`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:04:19 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:04:19 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:04:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.5-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:04:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:04:19 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:04:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e7c564be40a3fe298bfde0599bbea3174f78cfa6b3943e6db647fc9651d584`  
		Last Modified: Fri, 23 Oct 2026 20:04:38 GMT  
		Size: 174.8 MB (174750034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b4881433ada484dbc3c9a27c3ddf1454f17f101d042f218f9cd19f734f6580fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9d44c67c869bc4ece273cf55f6425a040ee0665cacf296e5b1d679045f813a`

```dockerfile
```

-	Layers:
	-	`sha256:442bacd0bd8dd91d762c9e5c9fea7b35348d4f663352fcab5b1578dd6ddba4f6`  
		Last Modified: Fri, 23 Oct 2026 20:04:34 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.in-toto+json
