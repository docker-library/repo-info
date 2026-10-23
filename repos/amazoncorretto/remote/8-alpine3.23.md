## `amazoncorretto:8-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:a8de7597045f357bac2ffb3831d6e6971ee6b8a85de63dd4e677396723e57ca7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:77578796397cd0570896882e6d4800e6b73fcfcfbd02471efb24c75357e7b274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104720431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dbef33b0c6432c022115cdf0516249d2581a483844e21eaf77a6fba978fed54`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:24 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:24 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:24 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edda6b9e247383b9826ddf5e2e87380a4bb6e2aefec33e36bf9a8083043fe65`  
		Last Modified: Fri, 23 Oct 2026 18:07:38 GMT  
		Size: 100.9 MB (100868204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6759ead9e8ba21d9a98863dde2ae73c3d5a85e85d7e983ea3707913ecc4f4941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f42e66f3e202eac3db548b969589c8b066602d1c9e04540d71faa5290ef6bf0`

```dockerfile
```

-	Layers:
	-	`sha256:2f63f3d1dc110debb7d0787927a4c938fa14e02ad1f3f5fa43526c37f0455d5d`  
		Last Modified: Fri, 23 Oct 2026 18:07:35 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e7d414ee08369c9186223ca45321ee927abd34f1661197dd9e6d4c4c2397ae1`  
		Last Modified: Fri, 23 Oct 2026 18:07:35 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:128475af35e518fe2484079dafd71506b1b6619cadcd213c8742f0b15347526e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a155b086d4c0d7d4de6c685ab4158e23b24dad06dccace8191d0ca35603532f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:03 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:03 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3bfc7115a18f84e87dba14f5eba996f2d6ba367aaf0fa0c74964f5989a0c69`  
		Last Modified: Fri, 23 Oct 2026 18:07:17 GMT  
		Size: 100.7 MB (100697887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3b097311f97b93f0c7c6a71dcb310772f394eddbdf78e619b6d284e05c0128c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765904e95924e98fd29b64b7210c9fe82d84181a48d34a68e8c7dd9f5f9c0c80`

```dockerfile
```

-	Layers:
	-	`sha256:892e9df6b4cffdde760c3ecb498af5244c12eafd906202db012d8e9c4847eb88`  
		Last Modified: Fri, 23 Oct 2026 18:07:15 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8ea7dcffed54e32e2934066bfcda14c1fd7cf4e041a30bcc0c87ffef616c20f`  
		Last Modified: Fri, 23 Oct 2026 18:07:15 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
