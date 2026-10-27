## `amazoncorretto:17-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:e09a9b821f3ebbdbd6bd7a5ead13e65ec186408ba8c8b22e25fbfbff9c4f24b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7159ad8de045276f539dd7eec2d4bc156962dc173e276caebb6af8debc1c2627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153042846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad316e43df68cbf09ffea691ea219be5d116fb9a9cab66ad7c5471971edf595c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:04 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:40:04 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3696645ffb4cac2023c2c6e877b2face4c74456c1214b47d8401d86f2024cf05`  
		Last Modified: Tue, 27 Oct 2026 16:40:21 GMT  
		Size: 149.2 MB (149190619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:65e9c405205f4d2cc75f94735304edeae09285f1b8e09691641c5387577cd65c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376aa770a9c7f34b968f263e7bf75b7a8abb8e00ee5aaed7372b9f23471adf4`

```dockerfile
```

-	Layers:
	-	`sha256:92a5fc450d2c4fe0055bdd909e239b2f7802fe2a9b183d9bf7c0d9a72b6a4a29`  
		Last Modified: Tue, 27 Oct 2026 16:40:18 GMT  
		Size: 582.5 KB (582503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce73fc40ac04cb07fe168f75dc61430b6701169fbddffe7b1c65d7e05a8b5092`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:cd268f313683f960f057acb4930ba8d56cc2c97df6ae0599131bb7a3a8bcdb72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151854198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f2da0ce3527561614e3961f445e3a894115520ec2d53c0847dc9b6eb6397b4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:46 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:40:46 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:46 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dde92da43ddd507e12365efbd4e51b491753e80e0e49658d583aaf5453254f7`  
		Last Modified: Tue, 27 Oct 2026 16:41:03 GMT  
		Size: 147.7 MB (147664704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:04e49d448f68ddd8fa8a47c98e4117f77fd6af6b8e269dd52619fb70af4a97a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.8 KB (590755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cacaa96748c5e1ab5d375e976ef1f9e03757ab27134684ed6682e3962a54b81`

```dockerfile
```

-	Layers:
	-	`sha256:fd2876c6970af4fbfd3bfdf059ceaf18823b416e7a956a7ba8b306f2c41aa076`  
		Last Modified: Tue, 27 Oct 2026 16:41:00 GMT  
		Size: 581.3 KB (581272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b0f3d189fae0e17ee709327741f63cd5301311fd84d7470a55ae65599d889e6`  
		Last Modified: Tue, 27 Oct 2026 16:41:00 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
