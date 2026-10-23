## `amazoncorretto:27-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:215e98c418baddddd913ef27a83e1204b502b180c813b3e0bf11a708a10771e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d7699ce8644a9b115373ed17d6f6916487bbb12ad1f237d27d7b3633fdb8c60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187272512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f932f0d5afe33fc4d5154c97db80afcc55b81fee8764df61a3e70366559b8a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:10:15 GMT
ARG version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:15 GMT
# ARGS: version=27.0.1.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:10:15 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c460e4ff64176cdfba00b5a37905e555cf5b0708a53b78107b938733f91c5a9`  
		Last Modified: Fri, 23 Oct 2026 18:10:37 GMT  
		Size: 183.4 MB (183420285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:72932fe3b0482b9d835d6188451a3e18a6d86da0209eb9969e13cbb18c604a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 KB (586437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fac16e6efe28eb016e97dc34fac38bfa58388ee4a83bd3900454dadc498d68d`

```dockerfile
```

-	Layers:
	-	`sha256:e325362e6316143c45f3d659001abcd8df4979c4aaeb0f13af988cd0b5eab0db`  
		Last Modified: Fri, 23 Oct 2026 18:10:33 GMT  
		Size: 577.1 KB (577066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5e310c6360da8d234ef18409444ea491076a46d26599e45b74ad88fd14d510a`  
		Last Modified: Fri, 23 Oct 2026 18:10:33 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:58a402ae09ca38771ee6becb8d992c9d5b4db927dee441fc2e41509c9214a7da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185245796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2bb362ab1350478bb953b66bdbf4afcc88a7039a4a6c5509638e31b5e9efdcb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:10:14 GMT
ARG version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:14 GMT
# ARGS: version=27.0.1.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:10:14 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:10:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01e5cd049f1f1697e910d5ec00b7d11c6a9ebc4435250b2247fc3dbc1ecf2fc`  
		Last Modified: Fri, 23 Oct 2026 18:10:36 GMT  
		Size: 181.1 MB (181056302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:77b35e3ab302d1d14e48f65a917628eb78528b483bcc64b01c2f458ec580a7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.3 KB (585307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797b7d72f37a523f7b96ea94bd5b7bb81ec7f7d4fe949d435fe1a07d0598e38d`

```dockerfile
```

-	Layers:
	-	`sha256:302bdb48fe04bf9449b1f6b256732b4f36a420903ac12b06cea76d35dfc87d7b`  
		Last Modified: Fri, 23 Oct 2026 18:10:32 GMT  
		Size: 575.8 KB (575832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba3d05db55817cb40826f13c82cd5a6ca1069051d3a445c8377d63f393a30ba`  
		Last Modified: Fri, 23 Oct 2026 18:10:32 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
