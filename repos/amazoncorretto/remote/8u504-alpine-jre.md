## `amazoncorretto:8u504-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:85806980182f8ad08144235d6583e854f8e9b88cbc6293e3a3ceac8407ef636a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine-jre` - linux; arm64 variant v8

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

### `amazoncorretto:8u504-alpine-jre` - unknown; unknown

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
