## `amazoncorretto:25-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:6dabeb50594c2b6f75baced0f6e6f86395df1d1564727508509977ebefb7683a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d599389cb230d8693a50ca29ff7838adba3e3608a253c74f661c000d1b99fd52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185344416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ca288d9fa8caeee1ea08c358b8d602e66dfed5ced822da9281500bd625b0f6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:03 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 21:16:03 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:03 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5c0c0d479e14959cc9ac535df42173019bb31bf4639b6c866bee33e49cb623`  
		Last Modified: Wed, 21 Oct 2026 21:16:24 GMT  
		Size: 181.5 MB (181492189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:91c93e2cc7f59e09c247e29edb23ef4ef9c73c18ce36006846a1a8bf81c9752e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.9 KB (600878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e906af4fd8b574537492c9d511c00eb4e5a0da87f6bbf4ea341015dceac7932`

```dockerfile
```

-	Layers:
	-	`sha256:693f5cd437badec48622d761472d3441f015e645874345d5aaa1f1da4582d9a2`  
		Last Modified: Wed, 21 Oct 2026 21:16:20 GMT  
		Size: 591.5 KB (591506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ee49932bd1d71cdf86bb952c40c018511521b094c5bf35786c901cd9d62555c`  
		Last Modified: Wed, 21 Oct 2026 21:16:20 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:68b196e1bdbd7ade2ef13929cf42aad7400bb8fb7fd445594554a4f24c350e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183288144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce5d2a8a2b0ca9b2c1d5e817e56b2d6f483ee2959efd704b8447467f8547098`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:39 GMT
ARG version=25.0.4.10.1
# Wed, 21 Oct 2026 21:16:39 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:39 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f84abe841cb4824591bd39ee68e6f73b451bab7f2c79eeb52288356d9c0c305`  
		Last Modified: Wed, 21 Oct 2026 21:17:01 GMT  
		Size: 179.1 MB (179098650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9ff487fced1f1689afc55fdc958a87e1222618bbfe0c2dd0732b0ae09334c4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7481db7a26ad12df70f489ab2f335c8898b14881fd67c4ac584e930b6a13e3bb`

```dockerfile
```

-	Layers:
	-	`sha256:9a3126a3ad094dfd7cd130f16e9ba233f6077710245444dfff96c457b382d94f`  
		Last Modified: Wed, 21 Oct 2026 21:16:57 GMT  
		Size: 590.3 KB (590272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a7a6678bde3197cffed5f66037df075bc3ff767adb10cf77d6a097ce8a3618`  
		Last Modified: Wed, 21 Oct 2026 21:16:57 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
