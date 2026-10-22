## `amazoncorretto:27-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:153d5ef5fe8d54a07618f2047d0efaef8402c4a29509c081037dc6c332de7cde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2a2de722291e1f3622735fff7b8ee0cfb244dba30e354d53842277b3dcba010e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187224724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d24dacfd09a077ec7f008225ff05bc7e29d3096fbb8b92982d8602fdc90d200`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:55 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 21:16:55 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:55 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d4d4c55ec514144419085fb8410672782bb8b657f4ca2aaa703644374c05d5`  
		Last Modified: Wed, 21 Oct 2026 21:17:14 GMT  
		Size: 183.4 MB (183372497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:63ec7c735dffc2d6880a998baaf21c3ba6dcc8e414ca76cd04fa7551857697c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 KB (586429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b75670b8f97623bd4065789dc10cb89db013484e08b4705b723a849d01aea1`

```dockerfile
```

-	Layers:
	-	`sha256:07fdfaf7b92611d575cff0d46e7ffff64698700bbd4397585cfc7948cce24405`  
		Last Modified: Wed, 21 Oct 2026 21:17:10 GMT  
		Size: 577.1 KB (577058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41c38b155c402b70b9ee5d28a2bb5097d08663136a34c769462ffbaaa753bc09`  
		Last Modified: Wed, 21 Oct 2026 21:17:10 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b67269148477698d18cd2adb77b98db67c9c24381e54ccb19dcd339405718821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185191013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cb11e304a5e607cc5f29a39c45d2559c9fcca8ddd9a4137a208207b12273e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:23 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 21:17:23 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:17:23 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:17:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e91cacf1efcb29788c1529b13bf17490aae8e29b74b765e25e67971e0494869`  
		Last Modified: Wed, 21 Oct 2026 21:17:45 GMT  
		Size: 181.0 MB (181001519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:01afc2f0a696a1f522f82c620abbdbb4724b1f1ef5be3e58e89398ca1a4e11f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.3 KB (585300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f25cec7e49942036d59ce3916c95b9fab80ca74afc2139548e8228b371675b`

```dockerfile
```

-	Layers:
	-	`sha256:9572923d238b1d1d5e8cdb699d160682c13474038952335011845d4f0f1852f6`  
		Last Modified: Wed, 21 Oct 2026 21:17:41 GMT  
		Size: 575.8 KB (575824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18127ec4dac60bc22beddbb21e9c8ec60085c76cca7b711b3e129f268994aac2`  
		Last Modified: Wed, 21 Oct 2026 21:17:41 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
