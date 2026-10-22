## `amazoncorretto:8-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:4fd11377a71b11acafd925ba42dd0977f022097adce44ad6c26421966545ee5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:28f6c9f96d9b745d2c2b4695be3ab70a7dc764f74948fa3db0f1e4bf1f3e2111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45670828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd306781d07c3ff2141bb5d1065247d087f2e252e6f417a88e54cb85448288ef`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:00 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 22:56:00 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:00 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700f2c1c71e39de9579ca89e8665b0ea36d32467052484af8f4e7f1bea659c02`  
		Last Modified: Wed, 21 Oct 2026 22:56:09 GMT  
		Size: 41.8 MB (41817719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:884baf66ad0ec87659cb08b260733bc8116bcbce31a2ff9cc14501708a195a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8b59926a156c5764df207365a47750b8086a2b232d045475962b689f65c838`

```dockerfile
```

-	Layers:
	-	`sha256:be726784eab740ba7ca09ff5fb6f301056fe35ae5d7ddbe1c990eb03a5b507f3`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3f03352a24867c0723d5712fd1a62c7dce9f4ca64b0fd5906d20ca62efd4669`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:39e7e73d20f9460a06b47270119a22e04fc8f3b48663c89839c3f3e29eae6047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45763106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3d7dca9a7d5ed4b565ded0e3ea3b7c2b54a96c9d0a3929d16c3d59b882acb4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:50:52 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:50:52 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:50:52 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e37ffdb46b3cf1feddc36050a64d38568db7da35e9f44e7e70944e88b82911`  
		Last Modified: Mon, 05 Oct 2026 21:51:02 GMT  
		Size: 41.6 MB (41575447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c401f1fa8935dabb288b7851af9bb1a7d51ded702a4099a3557cd9abe4243014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6cfd265135d5a460fd1b335b0587308b5c5efbb87c9a854cc864fbd4f08f1c`

```dockerfile
```

-	Layers:
	-	`sha256:28666790e4c7b50af8aed3cde44dacf675662d9b15059daf7feb2b87484bdeb2`  
		Last Modified: Mon, 05 Oct 2026 21:51:01 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1824923bf9d9068c70ff5896dcc2bd30fd8d2aface6fb35547aa2c3de267f7bf`  
		Last Modified: Mon, 05 Oct 2026 21:51:01 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
