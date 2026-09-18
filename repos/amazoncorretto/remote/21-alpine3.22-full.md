## `amazoncorretto:21-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:af7b6020f7a508287354cfa24f84505f321d15e513e4fd6f1a47f73d4e36c8e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:56be9c8fbe0f88a0b968d339a1d89de68f45ff9723ced2d3807b7053e5eaf7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165970545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d61a42be41bb029b5dafbcaec8f9b8c16493be89092ed14129165e1c0ce32f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:56 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:20:56 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc348514556631987d48526313db556eabbf40bf0ccba514d58cc1786656144`  
		Last Modified: Thu, 20 Aug 2026 17:21:15 GMT  
		Size: 162.2 MB (162182950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:98bda8312431aeba508538b28d860471c18b3243efe45d022568a05e3109fd24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 KB (593066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafe7fdde3bc310458c3bbd0675373a540f9690c9323b1299d178a4b7f6f170f`

```dockerfile
```

-	Layers:
	-	`sha256:993af0fb4a9c196cc14d0900d0baecb98d8b9437380a67748b26832eb530b8fc`  
		Last Modified: Thu, 20 Aug 2026 17:21:12 GMT  
		Size: 583.7 KB (583692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97562f4134123fb6ccdd870f634cb113dca63fd49a8c60901726c7b8d57c41bd`  
		Last Modified: Thu, 20 Aug 2026 17:21:12 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:343b79a0eef90c5083984aa01fcd17d6ba4d3088e663ad5cca7b7720fd4ae9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164299256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e29d25b979a68df29c6e06f437d3a262bd8f64c9cc90f6d232cf9664921e818`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:04 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:37:04 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:04 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7e2971dfe88ab57f74b978bbdff21991b753ee9cc3d1e6d596b8dda46eec9b`  
		Last Modified: Thu, 17 Sep 2026 21:37:23 GMT  
		Size: 160.2 MB (160176172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4de295ca13bb5f3f25a43b7e0d92a221a9862b02b9f6e8f0f6b8315a288654a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 KB (592588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ea4f5b6c77ed218a67abd8036b5e600edfc425d4c2d8459d603e71b1d23c15`

```dockerfile
```

-	Layers:
	-	`sha256:acfda6c9bb5d1eca8e8fd3779b07c226fde78f8a8a43005fa730bffaf2553065`  
		Last Modified: Thu, 17 Sep 2026 21:37:19 GMT  
		Size: 583.1 KB (583111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0321782ae46f0e8a379bd4228c0852679df71dbd0ca5c500c9d216e3c22f3cd8`  
		Last Modified: Thu, 17 Sep 2026 21:37:19 GMT  
		Size: 9.5 KB (9477 bytes)  
		MIME: application/vnd.in-toto+json
