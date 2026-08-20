## `amazoncorretto:21-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:bfbdc03691f15a0d3762225384d545cf5b664bc1ca5945756e3764ef89493a8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.22` - linux; amd64

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

### `amazoncorretto:21-alpine3.22` - unknown; unknown

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

### `amazoncorretto:21-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3691cd9001b0231467ede385732fc8f99f6acf7cee90abac3dd2b952b3cb36c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164296655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f1ed6a01a3f022cc9ab036f5bfe63a175a7b7009bb5eab2d1e90f52671ea33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:17:42 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:17:42 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:17:42 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:17:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20716522fba00088d3b89e60c2588bf3e1f428d7c1c8fb2b72f83a112b2d99f8`  
		Last Modified: Thu, 20 Aug 2026 17:18:01 GMT  
		Size: 160.2 MB (160176169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6d789f10642237ce4100bbb2bf10d5fe4f90b30807649e2a23dfc2a3137d0227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 KB (592589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de1c0a94835760c9bc5b9921bf3d368034dfcbcb0c4389bbf417e3e8fd25d4a`

```dockerfile
```

-	Layers:
	-	`sha256:f8a2a1bc7dbc8457997a44393a964d7c7f56e4f0f6d42e7208e2388f078ab96b`  
		Last Modified: Thu, 20 Aug 2026 17:17:58 GMT  
		Size: 583.1 KB (583111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22e1385e0e3223365a8a3772f055897d35d4145fbfe8e654d311e3d6f6bea089`  
		Last Modified: Thu, 20 Aug 2026 17:17:58 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
