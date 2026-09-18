## `amazoncorretto:27-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:37edecbbf70dcf5d4f9dd919847d2783450d72a4ea35efa531649270b2eff8ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:93568dc918832fb9ec5abf7f47bd3973d3d27982f136a6a546fbf0960b996197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187220800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96db7d0f5f39abe744c86738bc4dee2dd7f3212195b794cab706d7012f6afb37`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:38 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:37:38 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:38 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5293b73299733de3f7f9e6fba8969005d9de3da9a4fbba2c10aaa94d07625f9`  
		Last Modified: Thu, 17 Sep 2026 21:37:58 GMT  
		Size: 183.4 MB (183372293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b6f4fdb9c2fdcd0d5b6b2c00ac847916a53f5f4ba43ba5e03ec8e8c64ea79134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 KB (586430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b22cd3c257e9282191c2adedb017ddac0ebe4ce586157dba0cf1efc6e2cb67`

```dockerfile
```

-	Layers:
	-	`sha256:8cf702b21fe83a5fa5e4dec12fb5096668959968da2f622ffc269d4c8b245b3c`  
		Last Modified: Thu, 17 Sep 2026 21:37:54 GMT  
		Size: 577.1 KB (577058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53037f43caaf19b353051b1bd3e2e4aa80e78a13388ca5bc6e35ba6dd64ac0bf`  
		Last Modified: Thu, 17 Sep 2026 21:37:54 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5dc81f65839df40e806ef8d90e4cd92453672d04fb6663ac52863c5f4161b400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185187688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7ca1cff8ef20004334df056b581773061e9d2324736239c6c7ac30624a6a0a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
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
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3966fdb4ebbf11324d860a1307571013a867e1b0399a481fb965cf37c1b5f29d`  
		Last Modified: Thu, 17 Sep 2026 21:39:02 GMT  
		Size: 181.0 MB (181001632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:195c7b90e81a4b16da9053ca8185d2cc1e3a55d743f12eda18ac3f082c9a7022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.3 KB (585299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aeb3646264e474669d0ffbc7d58098b97b2569100a51261d20d47b954b34100`

```dockerfile
```

-	Layers:
	-	`sha256:e154f26e3707b2288497e6ed14fade62947932762d0a2712ceeb4988918b8816`  
		Last Modified: Thu, 17 Sep 2026 21:38:59 GMT  
		Size: 575.8 KB (575824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e94fb985f190d718e07fbc08e4ba4119d53087a3fae2f6f6585318780def30d`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
