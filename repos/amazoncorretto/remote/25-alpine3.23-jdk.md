## `amazoncorretto:25-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:e7e30bf615aa1743635664bf8d730ebbdecdd56d20eeeb102a72157ba76dfd04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ba949d51c3c99f7529ff588c80b0f0e6c3c90c1cd0b21fd09d4582013cfc4545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185346283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a0354a998903a5b054f8155fc349a7d91bbb6e38c8ba5290fff357dc6e47d8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:35 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:40:35 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:35 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7dc409846b403bcc6ba9e64fab3a85dbd73be090c0c6f4d16371e56df92af66`  
		Last Modified: Tue, 27 Oct 2026 16:40:57 GMT  
		Size: 181.5 MB (181494056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:96e895869321d442ad2e539e324bb4981dd429fe3d02bde1e249aa7ac536777b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.9 KB (600874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bf924db01cc666edf93ef5312ece96f1719cc21b9b52c22b77fadb3a6e741b`

```dockerfile
```

-	Layers:
	-	`sha256:955615e21fa9225ec1e902180174189f584aa11cf29e918763e8c565b360c5e3`  
		Last Modified: Tue, 27 Oct 2026 16:40:53 GMT  
		Size: 591.5 KB (591502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def627998eb3b2f7b787d4a9332f9a08bc629a6dd1fb22ec03e8e44497092c2c`  
		Last Modified: Tue, 27 Oct 2026 16:40:53 GMT  
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
