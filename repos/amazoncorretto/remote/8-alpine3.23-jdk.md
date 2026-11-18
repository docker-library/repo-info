## `amazoncorretto:8-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:b74ed25cd8c5ee6e0283274f9eb901a46fcb35a99ee0541a27129ebe9641e984
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e7c58a8df5866ec1401ca922827c9ce08af64b33f0c66bd95eae647020565968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104724551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d29c36c8782c5a4765a9d716e1d10982c26007138e1f55b121fc08c7508023`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:48 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:48 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:48 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72e224ff45300b762476554e71a75bd0542d669bee3dfa4f82a61015f753f54`  
		Last Modified: Wed, 18 Nov 2026 02:46:02 GMT  
		Size: 100.9 MB (100871962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ea99c922097d52a0d800169cd8f44c7af7aee1f34ccfbd11e4bafa959a31044b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adb70253563e0d8839c0057da1d65360c765c25676b61eb7c9e046268a5d4c1`

```dockerfile
```

-	Layers:
	-	`sha256:419c2cd13277c1037a54f57d7c74eb2a41be497ec6a9688ce97d1b78ed92a6b6`  
		Last Modified: Wed, 18 Nov 2026 02:45:59 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517eb8ec8bf25f8991a7dc1396fac81e6ca9a17f8f6787f6116532752e796286`  
		Last Modified: Wed, 18 Nov 2026 02:45:59 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:736af4e81a1961005dcf5ff49efdf7b08f5765beca20f2f0ea7198a60e454e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104889916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6cb34819aba84663a49a44be93aa35876cb76f885fd3008de7ae5327ee6f50`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:57 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:57 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5f8ffd48d96b878c8c325056a09df4a3169f56c3f3b8089d28e4f6ac2f4eb7`  
		Last Modified: Wed, 18 Nov 2026 02:46:12 GMT  
		Size: 100.7 MB (100699695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3f7150a40c8cfba99d7c04b403e68f5c005af3635d79f36633ddced2d0216562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa1ca76119fbd015073f8a901ffeaf6c36a54d579124b15068550b987db7107`

```dockerfile
```

-	Layers:
	-	`sha256:2c4764cb09a1dca1ad98cfc9de584f8772e90772d973183655b31c4f329ce497`  
		Last Modified: Wed, 18 Nov 2026 02:46:09 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0a4f3b5fa0c84961ece34f838c902a1a44e3cbfa65dc3f188c5aa09b144330c`  
		Last Modified: Wed, 18 Nov 2026 02:46:09 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
