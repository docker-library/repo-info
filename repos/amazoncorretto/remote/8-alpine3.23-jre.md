## `amazoncorretto:8-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:3063f299d2c98d73b0ce94b0af116e01c3cd1c2fb55ab6cb228ae1f41cebed63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.23-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ec8fc3d26137b9b661c7f72cd5449f0099ac2777615967314be1c210109cb744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45665295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b370f74bea3ec05458252d4ef12d6c910ba6b03654a357f602628ff027ce06`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:23 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:34:23 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:34:23 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:34:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7b171567f77b73dfc67dea6d664ce9901203c384855c2e08a56a38fe12215e`  
		Last Modified: Thu, 17 Sep 2026 21:34:33 GMT  
		Size: 41.8 MB (41816788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d6c0f29f2e1c937a3cb92bc5cf43ed9be3588dbfb3fab625aeb525ebaa4d1343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 KB (195867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b7982df8ea5b78835d759e0dc078077b7d9495969c525634a7d2f6a91e0a08b`

```dockerfile
```

-	Layers:
	-	`sha256:93662637e277e9ec7ce2e0644430278b8850136d4add0b835cb3d0ed259500a5`  
		Last Modified: Thu, 17 Sep 2026 21:34:32 GMT  
		Size: 187.2 KB (187211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f77c17f86f3379eeec5b40eb2affde0ef1a999a87dcd076dd29fe64c085aeaa1`  
		Last Modified: Thu, 17 Sep 2026 21:34:32 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7b74f4581b59a5530797b52e170af86c9b67db3d48231c5734decddb4f7b13a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45757553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47f1f85ebcac0ad9b7129319e7267ab35b8263c15e10c86f51de7766175220e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:36 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:36 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:36 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee3e243dd44f75830f1610c1e679cf09c0a09a4450b1fdfa6af345e08a26d91`  
		Last Modified: Thu, 17 Sep 2026 21:35:46 GMT  
		Size: 41.6 MB (41571497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1c77a0f88ddb610f9b3111fcbf3dae5d3c783edc410a4cd32ece88dd60535ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5c2c063d186c60848910d488c00187ae65993bf2bf8396daa406f87d3da6a9`

```dockerfile
```

-	Layers:
	-	`sha256:496440bc60696ada66d799f9e2ff8e03cf3903fd1d9ec81647be9c2ce281dce8`  
		Last Modified: Thu, 17 Sep 2026 21:35:45 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7df5764c418e758e31c1909513aa8664498dc23b480e0235d354727a8e067281`  
		Last Modified: Thu, 17 Sep 2026 21:35:45 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
