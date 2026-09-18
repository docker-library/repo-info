## `amazoncorretto:27-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:9d7d78685627b7791f18fc6bce239883d509762723fea2cd04c0cfbcd6c0ec9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b43650cfe9f51d34d0edcac4cbbf5202e6d3a87fb93226e444290e448403425f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (186997401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c6fae8a4e5e0dfcc4d89af41d742dfc227b49edf84873f57472af7253e76ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:32 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:37:32 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594fb34369bc5d589ffb7a7066bb2919c81be0ee63036d819eabfa87b11cfe3e`  
		Last Modified: Thu, 17 Sep 2026 21:37:52 GMT  
		Size: 183.4 MB (183371381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f076094c016ddd519f31c7d95e9b527ee06e0fced4689f5fc5bdb60140f39152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 KB (590968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08dc7d72ad4c35d89e983bff7cec15ab7b9dec2fb3c49502e2c19aa594180256`

```dockerfile
```

-	Layers:
	-	`sha256:a6aea4713e0b4dcaf3aa7bcd39ebea9396bcbf439c1ac13653e2cbfc44115287`  
		Last Modified: Thu, 17 Sep 2026 21:37:48 GMT  
		Size: 581.6 KB (581596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae01903723abd786c371919b63add06ec1c7d76aaf5ef2309902d70f2854d65e`  
		Last Modified: Thu, 17 Sep 2026 21:37:48 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d7e9feea919ee9c559cb6b258e968b8a69c1d16045cedebac0d8d602b65b46ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184967203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd44122b8f1dd7353318add9c2c30a762584a7138369b85e62b76a93d523951`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:41 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:38:41 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:41 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e9eb26b7aa76ec648a9493f7d0cc6a5da9fdff7b529da0a9dc138e1d3b9a67`  
		Last Modified: Thu, 17 Sep 2026 21:39:02 GMT  
		Size: 181.0 MB (180992702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0f45fa50bb61e6ac4e27f66b465edda430bc8673679569b2a92257dd90899357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.5 KB (590488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69920b26e7069d7c2b32767603a7f2c768c26fb5ac264c18d8db2de783eaef2f`

```dockerfile
```

-	Layers:
	-	`sha256:f66fa9597d65fedc1197e75e4fde9e91272649bf15d3711f73e54cc01da32041`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 581.0 KB (581012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d365a781c1b85fb2fe5c1a1a86b322eccfa8d208b7c7b11c49266fe6ff23b7`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
