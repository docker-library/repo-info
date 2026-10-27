## `amazoncorretto:27-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:e692273844a76098ba056163cd96cb99b401ff91c6bad924c9f6679570c929af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fd3a743990e1a24b7227ee8af50faa28b2bcafbacbd61ff22c1c8ab095117714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187031267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ca9a4735c81ed455a6f35c909a5e01610032e011c37d7f5b64221d520b5a52`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:45 GMT
ARG version=27.0.1.0.11
# Tue, 27 Oct 2026 16:40:45 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:45 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17865b0ead1611bb23196f19344ca6d6fff576222a4b121cf2e6a52c82e3c4c8`  
		Last Modified: Tue, 27 Oct 2026 16:41:06 GMT  
		Size: 183.4 MB (183405872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4af2c29cb776c9d359016ab0b8ba245fbace087dc82ffa5021c8935db14f5a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 KB (590976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfff99ad8defd6c8f78e89df0046cf29da27b0b46ba02972abcdc92477957a5`

```dockerfile
```

-	Layers:
	-	`sha256:84f4e460d7b697e1b5a2661cc5314712c4c429a7d2f7b01a669b3990efca992c`  
		Last Modified: Tue, 27 Oct 2026 16:41:02 GMT  
		Size: 581.6 KB (581604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604ef2ce2e1eb3f1c709a1c4ecaf0eb0e5c3a7e9874b9a1647cea920667dbb01`  
		Last Modified: Tue, 27 Oct 2026 16:41:02 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6d316880630b6abfb870b58b83a57e3af18820b79187e187baed2f8dc8e49164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185010701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930ba5a258f671ccf5cd4360dab721925b35b93234c8374e6ba1d29b020df420`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:19 GMT
ARG version=27.0.1.0.11
# Tue, 27 Oct 2026 16:41:19 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:19 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc81804afd4e4f4d7b26e0f5e490ac4f24442c763706eee7d32a3973cd94cdd`  
		Last Modified: Tue, 27 Oct 2026 16:41:40 GMT  
		Size: 181.0 MB (181036330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4fb159c0e27388d386c1063f293124d65fa0d67149772a60ca7127b2a04eb1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.5 KB (590496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e691451f03b690161b7599d4c48c9e4ed9fff3bd02fdf57c4a8b0a7658e6767`

```dockerfile
```

-	Layers:
	-	`sha256:0538248c9eaf73cde4c62fbf951d6b71a58ba200311ab79c433fd355f308900e`  
		Last Modified: Tue, 27 Oct 2026 16:41:36 GMT  
		Size: 581.0 KB (581020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39ff7a928b30519578bac2a20165a5d378579a4e9b665fdc3e81c502adf22b86`  
		Last Modified: Tue, 27 Oct 2026 16:41:36 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
