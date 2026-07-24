## `amazoncorretto:8-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:85ae91a5b250c5c9b3fe8dc0e2ed6cf50218f7aa3d7b16d004aaf5898ea0756f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:02893d54e596ee2c5ef85634ab8b0ec83a40492df582529dadb4252dda6c3293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104471809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483e533aea92a2f5cfcf8976c6f26cbdd3b530f6e70f2ca859a957234c2e3117`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:34 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:34 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:34 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:10:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fad418e60f6512d8f2ece95c6f2c83a82baa88b3f4765d63b936bff988d6439`  
		Last Modified: Thu, 23 Jul 2026 23:10:47 GMT  
		Size: 100.8 MB (100824934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cca9eda1b2b203ce19a33f7623cc588fe86e8f4cb973889f780073f7ea920a79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467c2488d36f70c8ce85413e4f357ef5d1c957eb2d6c23c9824a69d4d73adc67`

```dockerfile
```

-	Layers:
	-	`sha256:3d7ae4fc7fa4b27b11bf4ed2a7ce5a45a81945de21f5f89e916eafb5d13addfc`  
		Last Modified: Thu, 23 Jul 2026 23:10:45 GMT  
		Size: 250.9 KB (250933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21258db227ed3702a5c509eb6e5a45d6304e6cf635b00fee20f635096e7702e9`  
		Last Modified: Thu, 23 Jul 2026 23:10:45 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2095624381cf381b6d721c918b3fd89a8c9ea9ccaff47856f9c97ed992a06f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104651828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba816e11d4dfe701333c4b5f7dcf8b7ead470f513e48704c8ee93cfd1da94ab`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:14 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:14 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:14 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f6ce4e9ac27e6025b65b9279317f9887b851426003c0ecb134512c4431bff4`  
		Last Modified: Thu, 23 Jul 2026 23:12:28 GMT  
		Size: 100.7 MB (100657363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8b1bea56adb1b7af978b55b40f529356e55893b9ea3ef908101f42741734c125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad81011090b6960670eb68319db8fae3e7a1871d212180223a8e871e1a06f862`

```dockerfile
```

-	Layers:
	-	`sha256:5ff7ed40de3672adf8d83a3d819b3594239962cd03bcdc740db94086f30f506a`  
		Last Modified: Thu, 23 Jul 2026 23:12:26 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6079cb504506b53e4f81fbd93c0bf68a723aece0bd867852127bd55c980cc5`  
		Last Modified: Thu, 23 Jul 2026 23:12:26 GMT  
		Size: 9.5 KB (9458 bytes)  
		MIME: application/vnd.in-toto+json
