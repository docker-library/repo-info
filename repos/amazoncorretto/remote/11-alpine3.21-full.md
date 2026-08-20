## `amazoncorretto:11-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:bef7690f38ca47f89ce34e078d8be027585d9f15c8ff09e1b0ab88c6af6d8a14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b2c8ea257f4a5f59bcb70d3a654a58a5d88aafbe7e46a23bd6b363b0cdc7ac73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147591109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cee5dafe445d95351d70f22b3baeaed0c5567a0a1a978d448e3af0fa643711da`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:11:16 GMT
ARG version=11.0.32.9.1
# Thu, 23 Jul 2026 23:11:16 GMT
# ARGS: version=11.0.32.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:11:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:11:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d04c21e4e669a03baf7ed7a0793d4199b476d9eabb0b50a1aa33f10f29e418`  
		Last Modified: Thu, 23 Jul 2026 23:11:32 GMT  
		Size: 143.9 MB (143944234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:947f78ada8c9735e7d21547892881bd2172995913a1be2fe0675dd300c0af9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5541939746ae632305ad7aaca59c61d2327aa60de05adbc7e0891f07be41831`

```dockerfile
```

-	Layers:
	-	`sha256:9d891c230968326b715caf14d2ded744345c6fc80962ac194873d88b655976be`  
		Last Modified: Thu, 23 Jul 2026 23:11:29 GMT  
		Size: 593.4 KB (593363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35daba49d5bef61ccdf5878f54f99d5249c5a99156514ef63e1b2c4b378c38e7`  
		Last Modified: Thu, 23 Jul 2026 23:11:29 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:093019953c945144fc4c5c69b0adf62e173e0410775b2acc2728e3477bc71471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146318986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449887dd135cba8fe66cb43361292d77d32691dad407bbe883029eae97851944`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:13 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:13 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:13 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f18a8adb53715ae8cb068ea3576e09b502e038e279a40c7c2afdef6ede81659`  
		Last Modified: Thu, 20 Aug 2026 17:16:30 GMT  
		Size: 142.3 MB (142324521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d5b96604924e7900101394b35297265a0d24411ad735fff835065782f490c239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32658ccd516b00ef9f491b652d5861645143ad9f1ec5c237cd78a784665e11e`

```dockerfile
```

-	Layers:
	-	`sha256:10f9982657deb32a0347463e95da22ebd2acc5a773005344f6f23ad4272415f2`  
		Last Modified: Thu, 20 Aug 2026 17:16:27 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9837f292f715b5c0e64a6a5c3eaf6408984e45d9398612e74125583d90fccfd1`  
		Last Modified: Thu, 20 Aug 2026 17:16:27 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
