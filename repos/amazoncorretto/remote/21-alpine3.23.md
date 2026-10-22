## `amazoncorretto:21-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:407e41999fc6228cd8473a4d7d024f1190e6d399921405b552d28fd0f8f05a47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cb87e66e383eb796608a199c7f69def7a9a12596a98f969287cc2dccc65fef60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166026579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e2a3c4f6799f6e2fa1bbdeec5a651cb70b9e7fa33924ebd6cba1c9474e58a7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:45 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 21:15:45 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c421dc105b747492306ec66ec70c553416465d93a3bc81a40046d3034460a0`  
		Last Modified: Wed, 21 Oct 2026 21:16:04 GMT  
		Size: 162.2 MB (162174352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:876cab790337a8b44ecb21d52aff115daf80622d67109449c2572a459f55c87d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f50f72d532f10f399986b2a5ee2f3a13e8b0c68fb1ecb9cc86af90f85c6f96`

```dockerfile
```

-	Layers:
	-	`sha256:825354a90083a8930264c2cae24b36da54c6b2e40d0a046f470129cacc7a76bd`  
		Last Modified: Wed, 21 Oct 2026 21:16:00 GMT  
		Size: 582.4 KB (582410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b2c1c04df02bc8d943de1ce1f88fb66616c00a0113c7aee8689fe1a61cbd304`  
		Last Modified: Wed, 21 Oct 2026 21:16:00 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ee8bf85063c97e69ada85cdf3d99018378173f71330b5242372b89a3755197e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164379889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf854416da240f71ef7e86036c8807a31ec66888861098404d8bc0e4958dfad6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:16 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 21:16:16 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:16 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e000220206d951ab6f770d4b4eb5ffdaed68ac2a2598be157d6bf39ae46ffc`  
		Last Modified: Wed, 21 Oct 2026 21:16:36 GMT  
		Size: 160.2 MB (160190395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e14a24db939eac873e54c8d916e717ec9e35a59463234d9a5f26d9655abc9630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ecebd950e2c1c80315778ac221ef10bcf24e0c2ff8ce60649bed07f4e83986`

```dockerfile
```

-	Layers:
	-	`sha256:2bd44e43541e45ac7fb3834521810a9d78bd1a71b2a0bb968a8752151fd6cb60`  
		Last Modified: Wed, 21 Oct 2026 21:16:32 GMT  
		Size: 581.2 KB (581179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41912f5ab7a17fc37f6431afe5e06e6f092a3472287ff45c8567e41f8af0b7b3`  
		Last Modified: Wed, 21 Oct 2026 21:16:32 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
