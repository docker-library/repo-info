## `amazoncorretto:8-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:2d2e43e0dda1c0317e10b20a12f1beac599dca67efa0d7e068e6ae76d830f19f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c173f91d086175b1591caf2c1228f0923fdd6695b8295b003c4b9301bd6933a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104664392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f842ed366dbdc56b912848e1df1977aabe60c3c5054d45a7af026f20d328ad7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:02 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:19:02 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:02 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef346e628b487331bf57ca859801362389aac975307921639c8cc83704a107a`  
		Last Modified: Thu, 20 Aug 2026 17:19:17 GMT  
		Size: 100.8 MB (100818001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a6d5d32d346004cc78e964c086e33cf95806f8eebd3c8634ff19d38d88a01112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa364b693defc950fe7497f3b153f87723afc9e36a038b35eb201092f480eed`

```dockerfile
```

-	Layers:
	-	`sha256:54a9c897e45f7f6d63c632100ec8bf0ac415c0b930ec104f8c9938ab03ab4536`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f4670d888ac74d29b2258b2efabbb3b51a8b05a95ecc81ff63933741975657a`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0734df15fb2ad5952f618e49ef2303f5c30a68c10f1ad49ffa07191acf95389c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104833791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415ce8743d0b48bb9f8523fd28cb41d191040c5f8e999456d2c74303c6382a6e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:55 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:55 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:55 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:15:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a0f76214ce35466f605771401e4b8d1c4ae9ddbd38845bee1c8fb2c330e7f1`  
		Last Modified: Thu, 20 Aug 2026 17:16:09 GMT  
		Size: 100.7 MB (100650754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:06280a6921a5ce9a74583b713614c64e7607a1ed0995a7560aa9a63d17935e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9cea4b7a183c020ceb4f68bfa060b1f58aab33a33ad8ef5ebfa12c2cb497c51`

```dockerfile
```

-	Layers:
	-	`sha256:91eb6014f12a87019016ac900482b5cecb5f47663d3e608982e1a44cc9a64d65`  
		Last Modified: Thu, 20 Aug 2026 17:16:06 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82f997d936f2f8fda71dda9c9b24293d15407c4076bafdbb5b751d49d66e2f8c`  
		Last Modified: Thu, 20 Aug 2026 17:16:06 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
