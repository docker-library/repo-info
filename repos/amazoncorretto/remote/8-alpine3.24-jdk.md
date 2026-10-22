## `amazoncorretto:8-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:4ba4b21e329bd2abd313dfc3ab40cdd4f38adabe8e6d64c2a723249bb8b175c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:eba487e1e2737bc74f058e5db13f49ac3dfd692a7fbaadfaeb8a042896d9d52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104680188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09a156f062113e363d0ab45ce061450bdd05717b32e9ede0806423ec3f5fcf8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:53 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 22:55:53 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:55:53 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:55:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:55:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c414546e970bd8b88535ad90f9960598408b0163480b33f3e4c48b8666fd85`  
		Last Modified: Wed, 21 Oct 2026 22:56:07 GMT  
		Size: 100.8 MB (100827079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:26b065920074dc38b718020bf2955309d4a567495710419a0dfb3176592e0781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715418b1c489840d5a0d97f5c5d8284ae3138f93a6745eca4770468c794c28ab`

```dockerfile
```

-	Layers:
	-	`sha256:e702516c1f1b7bab0b2e301eed5737ffc89b33ad7391c441e327b8e88e219176`  
		Last Modified: Wed, 21 Oct 2026 22:56:04 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21180fd74b42f07f10b0213b0440275de9412493dd364586c669583b9d823903`  
		Last Modified: Wed, 21 Oct 2026 22:56:04 GMT  
		Size: 10.7 KB (10652 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:73e8dbbfb4efca7bf49a246713fb41e91f29454101063ca9ce6c33a5caf43d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104850434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef9107d5a53e38e3828749de320793528b92f0dd15b60a68319b49fbc1161da`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:57 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:57 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:57 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:41:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fae2bae36c83d787376b60e89e9b745bf189433f066364cc1237bca0b355f4`  
		Last Modified: Mon, 05 Oct 2026 21:42:11 GMT  
		Size: 100.7 MB (100662775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc58791d9635427f3ef604482173746734eff04dcd15caa1c3e2b9a34a335dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853ae122cf504df727089936337b4ae04c039154cbff20039b90e9b39c2cf2fc`

```dockerfile
```

-	Layers:
	-	`sha256:1ef2e908e857c6d8bc5f584e19a02d8946736184541676c39ce3e01e815be172`  
		Last Modified: Mon, 05 Oct 2026 21:42:08 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:334e3c5d2f5e3ecd661adc9ae01b0fa646f2eb3759b061fab27526633f126fd9`  
		Last Modified: Mon, 05 Oct 2026 21:42:08 GMT  
		Size: 10.8 KB (10804 bytes)  
		MIME: application/vnd.in-toto+json
