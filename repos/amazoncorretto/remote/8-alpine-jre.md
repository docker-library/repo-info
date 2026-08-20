## `amazoncorretto:8-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:fa06c7077292a0def5a25c0128ba11906a0ec7bbb2268061a06ee6002ecf3ab9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8e2176c44e88866ad84360bc8a8644eee2f076a68b07fc4457f7e24ae740ff17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45663340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7bdd1d8e324cb9a381019bcbebaa42cb6c322324dfd2d6af254fd917d406df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:05 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:19:05 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:05 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2199240330f00b6e7b78f6be1d7ff03cc6c85d950ae14fb6e7a62a4b6f73ebf7`  
		Last Modified: Thu, 20 Aug 2026 17:19:15 GMT  
		Size: 41.8 MB (41816949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:60744f5827c7da9e9cd52f4d66ef958a0ff7931410319a9a8907c5333795d6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137f8062721a436a7072cfec3564e58645555fbeaea5f3eb264afdf4bf2d1835`

```dockerfile
```

-	Layers:
	-	`sha256:9bcebdb09cde01389644658a8b01342563c374eb1fdde503f9f97354542d2694`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c730dee71130bd535404ca3b4abbf861532e7bd0f0e0c6c81c93a93a10c62b`  
		Last Modified: Thu, 20 Aug 2026 17:19:14 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5e5f7683855da605cedfd34cf6f3498f8e6ada022c853b647456d57229014d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45754707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65486bd6365a2b07cbed15a2ae34926f66bbd362fb51ac909ff9c915e69ddab4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:54 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:54 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:54 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdf89d072d773d62645f0793573570a7753a88795aa22813e31789591e89b0b`  
		Last Modified: Thu, 20 Aug 2026 17:16:04 GMT  
		Size: 41.6 MB (41571670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:415e95857ffdaa70a757a602be78319130e9381c997255989129d2e48918f1f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15fdbb8c0f00980f23ba4903b2b433d5553e94231342db860fe7decb709a251`

```dockerfile
```

-	Layers:
	-	`sha256:300049112fdc03edb53638e74e00e9d47124fa81260287ed8c523d10cf2d0338`  
		Last Modified: Thu, 20 Aug 2026 17:16:03 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7071256f9fc7e38e64ac41125b2f8a29350f28eaa409e24f97a43782c6085fb3`  
		Last Modified: Thu, 20 Aug 2026 17:16:03 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
