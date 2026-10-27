## `amazoncorretto:11-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:09280bda7a027dd8061aa988c4d0bcac915ed55117d00b56691ecb8f608f1e34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4c1c26a1ed023b4796060cce58aec85d1d5dc423ba308f58b772a0b6b97aabd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147623133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c9f3ef2c430afb8751952d7548e0e3cd5ecd1196cb2d45ec8403a35254b3bf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:37 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:39:37 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:37 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fab83f43154904d197777dfd83749d5c242572227d30d183589e28f46801f3`  
		Last Modified: Tue, 27 Oct 2026 16:39:53 GMT  
		Size: 144.0 MB (143997738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b0528c99dedf1503c4b772f33aed15d93625ffb05df2afe612bf6af21f19e34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e387862b95f860d4cfe88d6ebbdf3383c4d3ce48afef8164bb50d22e9d963cd3`

```dockerfile
```

-	Layers:
	-	`sha256:6a7c2eb9e3637b6f6862c2e5e3d5ef209eb03ec7a0861262d419549b776387bf`  
		Last Modified: Tue, 27 Oct 2026 16:39:50 GMT  
		Size: 593.4 KB (593365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c96cd5806a05349cd7a0cb7c4c719c4f875196006dd95d8922cd9a3099661bde`  
		Last Modified: Tue, 27 Oct 2026 16:39:50 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9567f6875a2ab1e98dd0c5514f3a1851e2ea3bb595f1f0499b406521b8512f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146333085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5975a59df0fe91b812df2fdad7041c5cc787b3f803c25f7bf04b368cdbb4785b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:23 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:40:23 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:23 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fae7d2d9f8722e1ba4ee19a642add4a9242496c66207200aa6da8964a417c9`  
		Last Modified: Tue, 27 Oct 2026 16:40:40 GMT  
		Size: 142.4 MB (142358714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:11c76ebc995af07e17cf0a8e8c537d5f06060f9f75559e70acef11319d30024d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7bab6d789064566ac4fb6b4914f6252b1c78c4935a32dc3074147225fc987f`

```dockerfile
```

-	Layers:
	-	`sha256:1ccb0d07770185f726b25f2560c4a2f688028607827fe69b9153dfddae289378`  
		Last Modified: Tue, 27 Oct 2026 16:40:37 GMT  
		Size: 593.4 KB (593421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b48b6ca89c2361c9dce6eb417f60383db2591e5e6c5df14ee850b6efb24f031`  
		Last Modified: Tue, 27 Oct 2026 16:40:37 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
