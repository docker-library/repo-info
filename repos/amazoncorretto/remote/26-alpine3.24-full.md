## `amazoncorretto:26-alpine3.24-full`

```console
$ docker pull amazoncorretto@sha256:a83b778877923a2e64e958626cbe30bc6130acb4a0ebcac53fb168556a9a0444
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.24-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:12c174fb35e7612a2712c3c5510153d9ec27cde31fa81aec344c300658cd8b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189369039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6b4b9c72d1b85fa75838d05b3b56b48b398b24c0fb9f941f908429ba9eba45`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:26 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:37:26 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:26 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e349f8453c58d230456a9fdd21133d46545148fc7fa652b37b6cfac84c161bb`  
		Last Modified: Thu, 17 Sep 2026 21:37:47 GMT  
		Size: 185.5 MB (185519301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fa9762e975bd14add76775e2e349ea0f21f25ff0b2bed6e86304766ec205730f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.4 KB (598374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4505e5c886be982c6a1b22b26a25f3ebed993bcb6c163532981be49cf3718b41`

```dockerfile
```

-	Layers:
	-	`sha256:beb4a02002f70580eb56ffea1926ceb7a8985df9ea7dc71f780740716aaf195c`  
		Last Modified: Thu, 17 Sep 2026 21:37:43 GMT  
		Size: 587.7 KB (587696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79a99a3b2aec9a2dc656a72618f11214ed459bea0565416f461c663c611264b7`  
		Last Modified: Thu, 17 Sep 2026 21:37:43 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.24-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:72f75192a9d9b2c92bdc96fe33bc1ccaca11f7d5d4fb305ca57fe495483cb25b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187232535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c52e8a63cc28b82e473b38903b779271f1b6ec7af1508a0f91bffd43b25cb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:18 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:38:18 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:18 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1463c58dd4f59c7fe3bd0302ace2d98a0095a5d6cb6a5ee137ede748360aa2af`  
		Last Modified: Thu, 17 Sep 2026 21:38:40 GMT  
		Size: 183.0 MB (183044876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ebce8ab97eac2af94383ea72cd91750a2ba88bdb913becc50b9d3a5e4ac3392d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.3 KB (597340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ac8f34b0b23947b79fe856d22eb13c88eb410f7988eb01c8bc20f8ea018849`

```dockerfile
```

-	Layers:
	-	`sha256:eb5bc61aba9d83d27770735573a9509ea1f495fff96a671c5e6e104b07d83fa7`  
		Last Modified: Thu, 17 Sep 2026 21:38:36 GMT  
		Size: 586.5 KB (586510 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b69b48da010c84f4f484ceff357b1d718e841d3375403ac0899db0e20326cf0`  
		Last Modified: Thu, 17 Sep 2026 21:38:36 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
