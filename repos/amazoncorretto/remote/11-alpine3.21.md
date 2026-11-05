## `amazoncorretto:11-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:e287d270bef3341a455467b8a51d06ba6baa292f90b361058ae5a7aa5e00a2a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:83ca2eb1ea50c741e60aa52cfadcaca8c7448a1ce03b07ffb92316b20dc84772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147623123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22425431561968296e6b73f1a51ca1c8d0dc657a5854db0ca1ae5330769b9cf0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:35 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:35 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:35 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa538b31afbe0fe2501bdc70dce6240163a3cfb5e76a87afae942829f736118`  
		Last Modified: Thu, 05 Nov 2026 19:12:52 GMT  
		Size: 144.0 MB (143997721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9c9132fbee527d83ec9d09291498dd58f9de74a3e03fbf99ca92d2b70a21265c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.8 KB (602750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda025441fcec73bf6416299d8be45446e1561753a7c8110b5f1cb634556989f`

```dockerfile
```

-	Layers:
	-	`sha256:624c4047802223fac85c02436f6828949a644f0cfbc20f6d6dabec9d30b4cbd3`  
		Last Modified: Thu, 05 Nov 2026 19:12:49 GMT  
		Size: 593.4 KB (593371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:460e3f9aeb7a042e0b18fec47404bc382e1835da505edc218864c6358d0a6442`  
		Last Modified: Thu, 05 Nov 2026 19:12:48 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21` - linux; arm64 variant v8

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

### `amazoncorretto:11-alpine3.21` - unknown; unknown

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
