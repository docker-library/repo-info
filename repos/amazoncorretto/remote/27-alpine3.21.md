## `amazoncorretto:27-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:06d72553907551a79b1609ea98e4ca9bdefc1ee7d26a9126630f7c841a990812
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b6bc472b6d241177fa21fd7bd57656882382d5eea2bd2c5af390ac7ade22b9e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (186996730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1083c8689643a79cf90fd68cecc4f6878614786e354ea03355548e329d72cc63`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:37 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 21:16:37 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:37 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4007467423e86aaefe105eb7c0525994effa286ecef6706fe88e2425cfe84f0`  
		Last Modified: Wed, 21 Oct 2026 21:16:58 GMT  
		Size: 183.4 MB (183371335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:66d278cb1127ca3e5f3ef32ee4c0febb6ae61a2a32cd2cf741594f5f576e4dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 KB (590968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85090befec683e895a61ff03b2cf9880a92314dbebac235b7ad7e02103fba158`

```dockerfile
```

-	Layers:
	-	`sha256:def7b7f4a2a52167f86d5098ae407c0343fbba7f69573ed7caae7c55131fa2ac`  
		Last Modified: Wed, 21 Oct 2026 21:16:54 GMT  
		Size: 581.6 KB (581596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad98ea8325f55634bdf6a431d13270c747ffe5e19bd4ac71387f788d28d805f0`  
		Last Modified: Wed, 21 Oct 2026 21:16:54 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:86ca995b2adfed5dacf895512c20b72f927d91a7c3a39b21fc699ef49d48d91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184967183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b23650fd636be2d01889520848fa9b0a7da7aff50129cca346963aa1234ddb1d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:12 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 21:17:12 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:17:12 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:17:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e720aff4d42c417316cb2dde3fca9459f350d3d1148013fa0ffc5adfc891d4f`  
		Last Modified: Wed, 21 Oct 2026 21:17:35 GMT  
		Size: 181.0 MB (180992812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:170e096b29d370bd885940d121c231f5916426b69faeef67aae6989f958cd4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.5 KB (590488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fce9408c2ae80a095b5186cb76f2eecf047df089fe314319475c4d999a0866f`

```dockerfile
```

-	Layers:
	-	`sha256:a762dc5ab4a54f5989f57056a7f61e6d93540b4dcf7253fc63495ed3399bb6f2`  
		Last Modified: Wed, 21 Oct 2026 21:17:30 GMT  
		Size: 581.0 KB (581012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95ed9db4558aebcba8efa8d8b55c1f4072c403033b78ef11ec5d2046e27b69cd`  
		Last Modified: Wed, 21 Oct 2026 21:17:30 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
