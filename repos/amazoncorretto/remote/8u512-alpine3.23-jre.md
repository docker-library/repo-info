## `amazoncorretto:8u512-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:847783ffe2149e3ca35019bdc230fa474928d401f65eec22781573fa816a5de4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.23-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3bb741dac46aec455f7c9aa50c91a0c9ade99f4c41349548aeea36f53f4fc284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45688285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1c2f8fb137c053beedaac647cfa2d743eab8e84e0712514037f84f58d421e9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:25 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:25 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:25 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aba5fed11acd779996eef2cdb0fabf33c2657d90117edff764d8f6e71f9e8ae`  
		Last Modified: Tue, 27 Oct 2026 16:39:35 GMT  
		Size: 41.8 MB (41836058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:907e82db1ab24914a1ebb09801ab333275d3af17616966eea64acc51faa0fab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 KB (195867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f427e03a093e40138e3d5959d89253afdbc5cdb946a76ff966fd1c4380f0a9c5`

```dockerfile
```

-	Layers:
	-	`sha256:3581b1df89dc0cce086b216937472b250c8564e7bf3353acbe9516f9acdf8cce`  
		Last Modified: Tue, 27 Oct 2026 16:39:34 GMT  
		Size: 187.2 KB (187211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eb92d7f8ed97cf139be72b226ee632b92995edb6668315ca3f342d208532e18`  
		Last Modified: Tue, 27 Oct 2026 16:39:34 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:72009b53777c811744bd6c38522b147a9aba5462caf2523432b2a6d59e630336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45780130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ecebdea1373f80ed4efbdb48258034cc36d1fb531d7e88f96a5a3286de93c5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:01 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:01 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:01 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a909eb8b8914108f83a721d10121f80079f2f88f604efb19e887ab0e0bfaa39`  
		Last Modified: Tue, 27 Oct 2026 16:40:11 GMT  
		Size: 41.6 MB (41590636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b1dbc4516e77762b18f96cb1f962ca1ae2e12a31d3a8b4a17dad631206d01d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b51955dc5778e5c90f7c17d986fc515fb08336ffbad19ffab4874909dff6f`

```dockerfile
```

-	Layers:
	-	`sha256:25268d65e0ac2ac9626772e80b5d6b62d425ac1cf4faf5c6b16faf714ee88da3`  
		Last Modified: Tue, 27 Oct 2026 16:40:10 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46b8d07637b24f8d98188388148c99fcb838be8d8244f3bb2219447b89c29856`  
		Last Modified: Tue, 27 Oct 2026 16:40:10 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
