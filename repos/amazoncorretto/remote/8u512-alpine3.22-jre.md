## `amazoncorretto:8u512-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:b23101ddcc4d18b46d8f6d65405e4e32ae94970698923fcd6e4eb6da3dbae818
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.22-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9aeb87d235351c3aecf6a973069133c318bc6e2b4aef003c7d99cf3a03115084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45627064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ca2e1449b78faa0e2801cddec8f2feeaa7d51c93a707eb61291ef40f672511`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:06 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:06 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:06 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9956f3e9278744c6b499d9ead8053feb51453782ca5b99aeed628a6a14953f`  
		Last Modified: Thu, 05 Nov 2026 19:12:16 GMT  
		Size: 41.8 MB (41832689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:59af287b2c7266a49a30c7e9fd11c17d5cfe52524cf48de6b5cf4fc55b63c66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 KB (197151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43abf0db3a2b953f0a43ed1b18b9da670ed0ad4fb4edd168d443d948f03b2dfd`

```dockerfile
```

-	Layers:
	-	`sha256:9c1ebaea06833f07a2c63367bf93742502f9dc2fa98a2eb7f54e48cdf7a9d796`  
		Last Modified: Thu, 05 Nov 2026 19:12:15 GMT  
		Size: 188.5 KB (188495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:715093e6dd1c90b94285aad9db569b654ff8009d624fc72930a4169868a105f8`  
		Last Modified: Thu, 05 Nov 2026 19:12:15 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:db9172084900251742ea2a42135c182d88b8c19092a5950150f89a0ba86db7c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45716565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bc71a8b0919d824855a97140af6b225959e263a9c7f4320c1e10ac0d7f5a02`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:07:56 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:07:56 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:07:56 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:07:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44620ea58829109679391e465ee84867cb3eb061c6e7cf316d234a418051b421`  
		Last Modified: Thu, 05 Nov 2026 19:08:06 GMT  
		Size: 41.6 MB (41589180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:23837231c3d6f89fe42ed1e5ade571bf17f242fe67a0fd44895eb2efc1ec103e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f24403252d9eaa9ba8ad9aed4b79394f59d730463e633a52463ff2623e9e0ce`

```dockerfile
```

-	Layers:
	-	`sha256:d75a5d6379ac892fc2787bc7601f254d5d1bdf34b7ce5c3c1af29078169e404b`  
		Last Modified: Thu, 05 Nov 2026 19:08:05 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66973d7932fc5d95ef2dcc69cb598bde306136813514182e24db71d15322041f`  
		Last Modified: Thu, 05 Nov 2026 19:08:05 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
