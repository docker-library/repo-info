## `amazoncorretto:8-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:3284b135d9c0188f94e9a6268ec39da6bf323a74b4c565ecdcff67d9e35f3be9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c8cae83e2f4dab2219ef5bc5025661a1d2dcb7fabcb1d8eff64b984337815824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104451531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:005c37c2ac2a3c466d8cda4dab39fb35e4271bdf9f27fd5abda2a813d34079de`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:29 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:14:29 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:29 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270d300414f55cb9a74187951ed90b4905da5ffe687046fe157a55e93c7488a1`  
		Last Modified: Wed, 21 Oct 2026 21:14:43 GMT  
		Size: 100.8 MB (100826136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:313940f44773790836670d7c97c316fb351c6880fd400d2e82408d55cfc230e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b24f6a8f16ab5ca65ed702fac5347889662320da84551014ffb27e38e65e441`

```dockerfile
```

-	Layers:
	-	`sha256:f2f5be4fb7bdcd6b6d22b55d75d0af0f45148686901e3aa417eb2d68afb07c07`  
		Last Modified: Wed, 21 Oct 2026 21:14:40 GMT  
		Size: 250.9 KB (250933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e8d806c1ed68348118b51cb362492d8cfb5ece8e4d05c0566694ac157dd791a`  
		Last Modified: Wed, 21 Oct 2026 21:14:40 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a6be508d812c2d4e2585b6b1fa65e661624fb9a6256a7e8abcdf389e6d0a8f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104636736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d2f57ce6289f26b044f308e9ecf1fa8cde850c16d949be5121d7bb943665780`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:37 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:14:37 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:37 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f423b45d4f8adc27c534300dc3247de69a74addbbd8777cc1dd9a4613f94531`  
		Last Modified: Wed, 21 Oct 2026 21:14:52 GMT  
		Size: 100.7 MB (100662365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ec195ac0612655b1babedd77334eb813cf8e521917b7f9c39d40e128e1f1a6f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26fb11ac5220c7a4aa95196aa467379ccaf314d9289a7db20d470772e1cb3de4`

```dockerfile
```

-	Layers:
	-	`sha256:88d0c4c0fa6f19de15d9e487e1a8d1967017496cc371d07c1f2d0fe0a8338cc0`  
		Last Modified: Wed, 21 Oct 2026 21:14:48 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27796fb60714bcd05578b46d089062b868482e25b9e7b795a266415035a052ce`  
		Last Modified: Wed, 21 Oct 2026 21:14:48 GMT  
		Size: 9.5 KB (9458 bytes)  
		MIME: application/vnd.in-toto+json
