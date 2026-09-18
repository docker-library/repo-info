## `amazoncorretto:17-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:487450f661fed04d85c81c212a3f04685b04c8eeae0312535cbda38f0ae6e2c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3502dd036604fa93c3a5eb7dbcef419e1a5fa9afa5580621d343a9a67c7e8d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152732537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e939cb62a97b332db4b4ef75a180fee86da05c3552a0ac6816b14921d0dae924`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:27 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:35:27 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:27 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0005cfe79ee9746c9b2beeaf750a0a211a8e9c22352c5f4d152d299aadca14`  
		Last Modified: Thu, 17 Sep 2026 21:35:46 GMT  
		Size: 148.9 MB (148940462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d85a17433867f964b62db62a433a8eb67cc6838a52ac3084e5c1b38704c9bfcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 KB (593170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5416a417aed8d6242e74b293747cf788baaa45dd69228c79101e9ba9a244ff`

```dockerfile
```

-	Layers:
	-	`sha256:9e1788ef5a12ccead6916deb343b62c72e8b16be5a024e741898440434b8116c`  
		Last Modified: Thu, 17 Sep 2026 21:35:42 GMT  
		Size: 583.8 KB (583791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b78e87ad2f1f4d6dfa2a8a0f25047d62dc11a096475e408822e7e205a35ef8`  
		Last Modified: Thu, 17 Sep 2026 21:35:41 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3bb76a163687cbff177cb5bb138281d30ee124140eae583f7e32a8e30e68c7e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151484127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaac49fad0e75fb7644fc037bc44cee8b4cd8813c1398b561247d3479630becf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:34 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:36:34 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d835e2fa558d5c39543d42a0b18d7cbd5852a6bda3edecd49737b6fd1115b`  
		Last Modified: Thu, 17 Sep 2026 21:36:53 GMT  
		Size: 147.4 MB (147361043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b143f2c5c5de684aaa0ceccb8faba8409b9ec0223621b7d91ab06412ba538fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.7 KB (592693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff7d11b659ab0730c45a2742bc796a2da5dec2d77f00833d487acc9b887f42e7`

```dockerfile
```

-	Layers:
	-	`sha256:570c86af60edce467f0eb8aab966f757b82e21ac0be88af47356665ad08273ce`  
		Last Modified: Thu, 17 Sep 2026 21:36:49 GMT  
		Size: 583.2 KB (583210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ce88e73ebbca680bf2a5214a1b730d6f7429c6e18e60a237b03243104aa27f9`  
		Last Modified: Thu, 17 Sep 2026 21:36:50 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
