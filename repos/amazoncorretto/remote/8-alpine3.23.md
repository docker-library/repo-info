## `amazoncorretto:8-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:4519488e906befa51f5e14280163a3e76107fa05d90fdca75448737bad9f882d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0bbda41dc85649e26efce64ecb214d78eef9a969bf4e50661db9b695d463acaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104662374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0f46e8ca3bca1390f4e839559d3039ebf43de2b857e11aef033206b7a91c28`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:46 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:18:46 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:46 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963b697af2e55cca7ef321ed87c61228b875527d34133d3061a874b6a607d95e`  
		Last Modified: Thu, 20 Aug 2026 17:19:00 GMT  
		Size: 100.8 MB (100817953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7cbef29eebb5ee4e20a40b391bf38a670c1c86f37fc34092b2d81b3b4c591f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 KB (255750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88822145500dafbca7ffc5d004e6e85ca7c7cf9386c8910e86a91cf1f8029249`

```dockerfile
```

-	Layers:
	-	`sha256:91dad806e229facd426dfb5db065da13584b3bc3b73695464c732a734b8d264b`  
		Last Modified: Thu, 20 Aug 2026 17:18:57 GMT  
		Size: 246.4 KB (246395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9e8cecbc9e586d8a3c1fe6ecfc638b862a179e7dbb11321052084c37946d154`  
		Last Modified: Thu, 20 Aug 2026 17:18:57 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b12a981c88e19167570a83f63c3fbd5b3dea97ffa7da324d3e85ab50270d4026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104832637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2120ff3341dbb7659216a1dd9b2de6bb5fd639aaa77320ba0380eb12804e68d1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:39 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:39 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:39 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:15:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357b7e78384d3f52fe5912d547084cc7b54b1db1826917305888ed5a4931352b`  
		Last Modified: Thu, 20 Aug 2026 17:15:53 GMT  
		Size: 100.7 MB (100650777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7fed34f87fd7b52f52f7f4aa24cf4965db692397d48e09fe31766ea763a059d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03cf17c085fbbd2540147ff3841d6e3a5689e4987f3f562575f8e3291ecd160a`

```dockerfile
```

-	Layers:
	-	`sha256:2905f23699bf8d8189d392cd5e8e64761356a213367005b0bd99790e47b127a6`  
		Last Modified: Thu, 20 Aug 2026 17:15:51 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55f0beb6e10ef19e14020d2d194f81b692b407a5be5942da029e39855635e5c4`  
		Last Modified: Thu, 20 Aug 2026 17:15:51 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
