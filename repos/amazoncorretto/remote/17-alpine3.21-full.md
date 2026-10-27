## `amazoncorretto:17-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:825ed3ae6a8a50d587d874982176bc924f82cbf8540b2706b39b55ec8cee2547
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f78cc3e630a8a5bb6b4430c22cb1338405d17886a0ad8820a49dbb24a191b9e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152812902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a88f82db2d1d50010f5e26fd4649baef1887e9235742a889a03d06ab26c035`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:51 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:39:51 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:51 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae91aab8a8ae97ac1e4d9e7064204acf73da3da5f1a616d02118aeb214c4746`  
		Last Modified: Tue, 27 Oct 2026 16:40:08 GMT  
		Size: 149.2 MB (149187507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:146e3e70b9be29561d810d51c77fa23bf85479c42e199bec1e68e1e5dc1a95c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3bb09d81b876823d86952655537fa2b2e5a31554f582914e5a039fa1c7402f4`

```dockerfile
```

-	Layers:
	-	`sha256:12b13de78583201d1af1ba1369ea1eff5c0ff16455b166eab2f8606afeb9eb99`  
		Last Modified: Tue, 27 Oct 2026 16:40:04 GMT  
		Size: 587.2 KB (587209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f347d87fd45dd1a7814e9d2ca71ba352768a436f78220cf70e00036303c6d4c`  
		Last Modified: Tue, 27 Oct 2026 16:40:04 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a43235d7e66bcb408ca2e19eefbb4d2d0a0027a8b9da3d7efea788f07c1f177a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151634131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c351bec2c5e295d69aa7a352a5ad58cb2804960a9d04d871e8168fd154dbf175`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:42 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:40:42 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:42 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c006117d846f068d58b2bc6ddd6b900f349ceaf9c20b64f0cff435221ac226`  
		Last Modified: Tue, 27 Oct 2026 16:41:00 GMT  
		Size: 147.7 MB (147659760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a024b5b87b82bac6f21809d3a95810ebcb6add8bdc81c30a16660fc71bffa7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8444168a827c36792bad8cc2e335075b388f63eb0faf7b03c8d13367bf49889`

```dockerfile
```

-	Layers:
	-	`sha256:fff9687a36b9bfb245ea7a65db52c335dea291a810ecfbc9ab7bb57ed9c38241`  
		Last Modified: Tue, 27 Oct 2026 16:40:57 GMT  
		Size: 586.6 KB (586628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00637784f15c00fe5ecd2a3042763734047b492bcfb70d78e38d049d0254da6b`  
		Last Modified: Tue, 27 Oct 2026 16:40:56 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
