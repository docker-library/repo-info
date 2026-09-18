## `amazoncorretto:26-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:ccbd3e71ea5b47893196317ac225b51c39c7186489ce0693c20d58f02d276525
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:70bb24f41e19be0f73bb2a538e8d681e19fad449af5a467a0cae97bab618aaab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189291867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0936d4e4e64731ead7f4a8abe68f81ac520298f549f218255c533152bf3d48`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:07 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:37:07 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:07 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252d5a2be3f99dbb6b818ef2785ce05ad7f6c5cb1056d446b3e79af7a8e58865`  
		Last Modified: Thu, 17 Sep 2026 21:37:28 GMT  
		Size: 185.5 MB (185499792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:32cc81252fa53b0873cbe7cffd031ce536f29598a3846bbab54692bef9d9c48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (596975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2439f97652a2aea91f654693edea2904693fe8667b984991b492eac38e8d4f4`

```dockerfile
```

-	Layers:
	-	`sha256:75d18e97f0b4732f0b812ef85166f90353bf16493bf79995c9e074a644e18c33`  
		Last Modified: Thu, 17 Sep 2026 21:37:24 GMT  
		Size: 587.6 KB (587603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2540a6c78c43874e812368a2bbdeaf12c7125d719dd8463eb55ba26e44e68d32`  
		Last Modified: Thu, 17 Sep 2026 21:37:24 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4fdaf51cab23bccf35ecfb0dea64b42c1c101fb15e8e37f1b6919004db6fd8a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187150303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a0cbc86dd2fa99e1e4a601cdf083c2633e702ec42992c0d1277a049712d148`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:06 GMT
ARG version=26.0.2.11.1
# Thu, 17 Sep 2026 21:38:06 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478e31b2192dcdd151a878bd3248cc14ab5f8248752c32a60d514a6d768cb682`  
		Last Modified: Thu, 17 Sep 2026 21:38:28 GMT  
		Size: 183.0 MB (183027219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cfb2a208e75a8a025dd220cb10596dcbef88300dc1702ac352657ed0fc81ea82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376a790b1cd6ac3f44e2ae0ca09fc8a495795264a7cfbf0926687d0fdaaca53`

```dockerfile
```

-	Layers:
	-	`sha256:8e1b99ad95fc3792457c6e7c3acd33919143e6430b0bbeb9aa97ea049801ef97`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 587.0 KB (587019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ca99411f2f035a28d9239d06bfba57c0cddb2c41608bb0b8781d2efdcad1317`  
		Last Modified: Thu, 17 Sep 2026 21:38:24 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
