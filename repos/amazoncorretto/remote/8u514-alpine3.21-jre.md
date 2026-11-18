## `amazoncorretto:8u514-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:072ce6aa4ea174501fb41584fcf7164dfc1b73d24134c615c7ee544ec6d7a2df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u514-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2da84c27af1708151f0d259fd0ca3c9d7abe4d6e4a67440e65e6272eb5d69f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45464318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d6b3a4c03ed3ac8981696e545565d4fb632cb74ee30e039d4f1d2755035c1d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:38 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:38 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:38 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891fd867380c19c2a33ecd73bc1879c423dfe775965484027017cc030f966f07`  
		Last Modified: Wed, 18 Nov 2026 02:45:48 GMT  
		Size: 41.8 MB (41838916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f6cca578fb7e6bb30e7adc01011593e97ecc8cfe44bd8a0b51a50db352aab075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e397d1a02f11e5d296220aebca609e2224308aa1b29a9ceb4896a218334a4182`

```dockerfile
```

-	Layers:
	-	`sha256:e0297c4450e8d81df00b83e06ef515aed92f3653f9067b58122b430bdd16e640`  
		Last Modified: Wed, 18 Nov 2026 02:45:47 GMT  
		Size: 188.7 KB (188731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0828b4086df6925d4cd38e0601d480d9045dd0e7b54acdf212f44f10c0112950`  
		Last Modified: Wed, 18 Nov 2026 02:45:46 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u514-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:56bcedf70d152479ada34581385e015a6e3a9c247d204cdb8f7fb49ff066e226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45565893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913defae80ebcfbd139a5d2793c962c26de07019072a60edea1e2ed249a8c52c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:47 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:47 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:47 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d600973ecbd0ea496f241cdda2b38bcbd1f5a3e9cf07229bdb1cf9914e7c7e47`  
		Last Modified: Wed, 18 Nov 2026 02:45:57 GMT  
		Size: 41.6 MB (41591470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bc6b53f9c8cf271622e977e9f5635eb4a43749c27d5fd351bd61236f83d3db86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a819ee0a699d15da402a9a8508056e71570e00c8e0cd3d60a3f6c71d5b0bfdd`

```dockerfile
```

-	Layers:
	-	`sha256:241bed40e421c41c342fe7ced60ba4d8ea2ecb7ab6c1ce923cf5683e92cfda10`  
		Last Modified: Wed, 18 Nov 2026 02:45:56 GMT  
		Size: 188.8 KB (188839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b7677665a7cfc4454ffa3c462a007c495169e842e0f7a56e740e2b1812f2969`  
		Last Modified: Wed, 18 Nov 2026 02:45:56 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
