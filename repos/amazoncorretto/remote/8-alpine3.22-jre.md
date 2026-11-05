## `amazoncorretto:8-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:35c25cc9520cab340eca1a1a859ca140af35db137934bee913e98bbe57b972be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22-jre` - linux; amd64

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

### `amazoncorretto:8-alpine3.22-jre` - unknown; unknown

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

### `amazoncorretto:8-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:70ad7a4a7a2e32615c95848fd57dea81e8d1123eaaa2325783068629b1df7c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45716610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f5c4abf961aad258fb09f1a0d6131cfe26db17d79b9ea3eb1d2ed418a596aa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:45 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:45 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:45 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e96d4cf2eab0b82a3fef742cb9ca7b4bc6683ea52f87731444604abc13ec84`  
		Last Modified: Tue, 27 Oct 2026 16:39:55 GMT  
		Size: 41.6 MB (41589229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4ce687698476991acb93202770585c656080a4bc284ee3607ad584a52264ba8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395c29498362d7fc42ee45166e026c3b76774210adc48dc001478176985cf1f7`

```dockerfile
```

-	Layers:
	-	`sha256:8ce96d9969d0ee96783aafcbeccf58b8d0ffa34cd87a254d8218235c07dda5be`  
		Last Modified: Tue, 27 Oct 2026 16:39:54 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b02031d43d536c8028abd0d80e68d3c3d0fa1b128da44c9fc7efd64ba29abb6`  
		Last Modified: Tue, 27 Oct 2026 16:39:54 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
