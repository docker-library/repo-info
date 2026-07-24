## `amazoncorretto:21-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:34a299888d788f1f9f759f8bce8231a968a6323e3c579e4a349512d666bb322d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e8204fa1341a874f8e3078510d1cf058b981c84296068bffe0820fd46f3c8705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166019390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a95a92260b9eba7dbd137e1da3080ca053a03d8c5fe13bf49f8eec1e0cb9568`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:39 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:12:39 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:39 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e429cad56b9afbc4ffdc2f71ce461fae11548af2f93f38c271a6e3b0f5fa5a`  
		Last Modified: Thu, 23 Jul 2026 23:12:58 GMT  
		Size: 162.2 MB (162174969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6f803f3cb1d56cda11f758c107514e592b8f11e11dd52d1810cf0297bcbc42d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a0b480daff14d4cacab82373edf9ad8c75fda5d5c33b5699959a6c104571c64`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4e6bdb09590f1e76db133ddcbb0b353d2188905a3941c93b92ad85d98f37f`  
		Last Modified: Thu, 23 Jul 2026 23:12:55 GMT  
		Size: 582.4 KB (582404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c93e2d4b939b658dbd0e10b60446f27999bdb69ad0f13986b31dd2160685cc56`  
		Last Modified: Thu, 23 Jul 2026 23:12:55 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fe46f3eaacb226b87141cc83da1ab22ed19b300a466ad82cdb527329e806e0e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164354385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0398f95fcab98a285a1c594385de18b004cde8b2ea4508d85981996b4d8e364`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:20 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:14:20 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:20 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48805af974ae325724c859e7a272a8b474abd14ae9f17d4e3d88bb4c1facafe5`  
		Last Modified: Thu, 23 Jul 2026 23:14:40 GMT  
		Size: 160.2 MB (160172525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:76c6d1c86c7c54de4ff548d43fc2a9c7cb454732378ac191f89eedb2119ea113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e89ab6c88183b70ecc0db7f557fdaf94bc7019680996e543e8d9f77f04a23d`

```dockerfile
```

-	Layers:
	-	`sha256:238c25a25e99097fa3c80c5f686ef0ee4e7f37afa2650acd442958b4e5e6a599`  
		Last Modified: Thu, 23 Jul 2026 23:14:36 GMT  
		Size: 581.2 KB (581173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efb21227ac857575c1c9f758e58de2e60eb51a1a4d791526e0b1c6e258fa1330`  
		Last Modified: Thu, 23 Jul 2026 23:14:36 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
