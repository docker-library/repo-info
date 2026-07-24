## `amazoncorretto:21-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:6b7fd40a70ece6ff23941521eb77196580bc1b153db5b2f127fff9383c557289
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:af99d41d725b5ddbcb5ae8f4d70beb096fd8df1bd1030ea05d3cc5f7fe065453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165965742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e73a394dad3f12f08213adfe1d7806fdb9450d70122753f012d3fc401d6754`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:34 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:12:34 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:34 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1abf12019719e2bb1e8247b09756ad7e1d549cdec2ac7a81b8f2a76451f39f`  
		Last Modified: Thu, 23 Jul 2026 23:12:53 GMT  
		Size: 162.2 MB (162178147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e44dbc4c2577997b4ce8562d2c14abf969c8df38bdd4d81babf819e779a54b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 KB (593062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d22de06edc3941a3402628231988ae9ddd9325afe3c1992e0c922c5a24a383d`

```dockerfile
```

-	Layers:
	-	`sha256:63f1866e7a12d2e141ab935a18054fff94e24a757dca4f1ec8982e1708818200`  
		Last Modified: Thu, 23 Jul 2026 23:12:49 GMT  
		Size: 583.7 KB (583688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c21a9d4b621eca5f2515c8298fa1829e3babfb7a2bf240f9c7869b2aa55f83ea`  
		Last Modified: Thu, 23 Jul 2026 23:12:49 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0ae95438a1e10ecb313109db5ad7e9e9a5a3cbd4dcc8155cf4b4acc1d36f759e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164288514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc619cfce45bb8e2ba79525b4bfe92939a958bc5a2d9e6c12bd5375a0cf91ed5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:16 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:14:16 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b1269927e788c68fa9ec3983cc79e35d860a72308ef58ea80048f379e13a55`  
		Last Modified: Thu, 23 Jul 2026 23:14:35 GMT  
		Size: 160.2 MB (160168028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a1a39f42331d235f5002c3940f84e2d3684fe750104154bd7501e591eb1f9f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 KB (592585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d3b6c83b890411f287f9eb5210dd15cf989f3b4e51ea56a5286f562b3be12`

```dockerfile
```

-	Layers:
	-	`sha256:dc75829302962c4dcfd8c273137be8c85300881912f0ba44f67da2c98f24f943`  
		Last Modified: Thu, 23 Jul 2026 23:14:32 GMT  
		Size: 583.1 KB (583107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d99532389bc258205d7fdab3b2729ed72f5db5eb1d7b57d5f383e51717b515b6`  
		Last Modified: Thu, 23 Jul 2026 23:14:31 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
