## `amazoncorretto:8-alpine-full`

```console
$ docker pull amazoncorretto@sha256:1b3940ff6d671c13efd08346a423fadef008a45355c8315a283838946bcfb003
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1788811bfc2c074ccb79ade5b9d951a61a4ca8cd9b3fb4515ef9c0a6635dd2c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104719553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9fc2025320a4ce097655a7bdcd4fafbd35059a3b1d5c6c41f25f64c34c0d62`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:24 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:24 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4c254876209a70bbf86298646a5bd80145c0c3a9e3c7df02a3adcbde7f2c85`  
		Last Modified: Thu, 05 Nov 2026 19:12:38 GMT  
		Size: 100.9 MB (100865880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3d550e502e1fef379be89c08477a8ee7a9ee04e7528168bb381de2f06e1dd2fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215cebf5b04098562e35100f3337591a7ef648aa45e2445d7652a344997299dc`

```dockerfile
```

-	Layers:
	-	`sha256:a54d25177e01f8e9a044c5e702848f1879a040949524ed47bb58ba2364c2d315`  
		Last Modified: Thu, 05 Nov 2026 19:12:35 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d0ae6ae9226acd26640276ee07e63543cc54b31fa68bb4557c52e7265c2db3`  
		Last Modified: Thu, 05 Nov 2026 19:12:36 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5bce497a79696dd0e0bd6909abc9d7ca8070b1208ee4977de61e3e3bd6663810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104884693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb61a965e3c6e59dd1b46186fcee5050fd12a5107380e4391c5c96cac6fd3b0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:04 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:04 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c70e3c58972aac4144fd11a131201483c7ddc200babd824668d0c64a2a17ef8`  
		Last Modified: Tue, 27 Oct 2026 16:40:18 GMT  
		Size: 100.7 MB (100694205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:669a845460e518c59d9a4116ade7f688d2ea3f3adfdcddc5c9fcbe9120a88550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2a41dae604e4ea53ade3125f12c6b7b4ab6a8973397160c10825142dc15d4c`

```dockerfile
```

-	Layers:
	-	`sha256:93489ac1d04ed6cbc869f6c0d3c42c705d5a11519a3f01ccd95ceb3fd19aa698`  
		Last Modified: Tue, 27 Oct 2026 16:40:16 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35ab78a430d6f6a980d2c56ffc0cd7bd5605fa679f88152a24a57b9858a9c78a`  
		Last Modified: Tue, 27 Oct 2026 16:40:15 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
