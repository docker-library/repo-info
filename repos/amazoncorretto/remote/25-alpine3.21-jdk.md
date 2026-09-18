## `amazoncorretto:25-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:b8484f05d4e03380143dc40c2fa8f64334aac84ef0433a29f45d10a0c99ed97d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3001b09aae552bf9f6ae637469a4730231645ef34756ca2c92e2c037ea6f5924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185120898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca048a662e798793d71594121488f26fb04df57af908ae8ca4c82640a7ebb226`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:32 GMT
ARG version=25.0.4.8.1
# Thu, 17 Sep 2026 21:36:32 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4ba5427c9c31bdd3acb2d1d5183164db6ae0301c6211b0cb0f16ab68613751`  
		Last Modified: Thu, 17 Sep 2026 21:36:52 GMT  
		Size: 181.5 MB (181494878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:96ee1e18450e90db889f2efe097ed923583da2cbc97844c3635ef5afc431bd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b96e5062b5c574176c374c2e1ff3b082577a91e0ceb961c7e1b217664d74480`

```dockerfile
```

-	Layers:
	-	`sha256:62867fa2d266750f5378babc546a72961a0ad833648ae750c6e7c1df7ea02bea`  
		Last Modified: Thu, 17 Sep 2026 21:36:50 GMT  
		Size: 596.2 KB (596210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fd80f58ca08d8314086c60ae6d3228f46f27a9c5bcb461084224f366c03c7bd`  
		Last Modified: Thu, 17 Sep 2026 21:36:49 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:171db8dce9763d1e69703ee34a86672cc57c501eb98c1f6e2f4ea30fe5110895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183039962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b16949b0296d26ac70618380fa2d50feb5eddca97344860eebd14e16d8b716`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:32 GMT
ARG version=25.0.4.8.1
# Thu, 17 Sep 2026 21:37:32 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782d58ce328a00378d25cd7f4c268bd7dd5433385b04f4a624157082788d5205`  
		Last Modified: Thu, 17 Sep 2026 21:37:53 GMT  
		Size: 179.1 MB (179065461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:65f417e2dae863298d90f88f3719a602e79a6511e2c4d18b221d7c600bc9f533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eabffaee8d84f3a72a078f0b885f45feb8bad293211beef14fd6fef7fda5d0`

```dockerfile
```

-	Layers:
	-	`sha256:3c0a16ae1cddbc695000d7f6f08ed68b506bc098e8dd38a54146a2290d6b9c4c`  
		Last Modified: Thu, 17 Sep 2026 21:37:49 GMT  
		Size: 595.6 KB (595626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b127a710bed240a4b3977fa5abce93d5c635ad61030176dfe85ead417a31f2d`  
		Last Modified: Thu, 17 Sep 2026 21:37:48 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
