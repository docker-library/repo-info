## `amazoncorretto:27-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:560162ade7194bc91bfa900779c433272a99ce23ee0fdf5b2041084f9dc05492
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5de9c49305251af8ffe17f7a53b64fe3c7bbfbcb777b044d07c3c19a1abbf755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187169943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e907bf05ab3cd9ab514b16aa6cc11345cc59a40c15d0ba8cee3ea8acb804577`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:16:45 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 21:16:45 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:16:45 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:16:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:16:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ac1edbd1799b3d7b377b81f7315817cc08d5220b0032a527c36ba8311c9b64`  
		Last Modified: Wed, 21 Oct 2026 21:17:06 GMT  
		Size: 183.4 MB (183375586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9866a4ecca0ea1b0fdb567ce54e7b925ffb102894f73bf728bf8aeffdae55d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.7 KB (587714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9777daa99f756f7de4b3de01e127e15fa1a82b6c952534cd6b8bb48e4a022bba`

```dockerfile
```

-	Layers:
	-	`sha256:b487e931a719e71bae25d34e923b9eb30220368a591708f687ff2f0433b902b0`  
		Last Modified: Wed, 21 Oct 2026 21:17:02 GMT  
		Size: 578.3 KB (578342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a4f8debabd928b141535f9056dc4a30d50e649f8690c6403603cd92f7c0ef2f`  
		Last Modified: Wed, 21 Oct 2026 21:17:02 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bb3d92e1814f5a873dad96930ac1cbed8817237f0afc58fa0be0bc90b4d93ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185129084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c0915855645d9df4fbb9ed551dcb42e4ed8d81dfec459bab96928fb3835c41`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:17:19 GMT
ARG version=27.0.0.35.1
# Wed, 21 Oct 2026 21:17:19 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:17:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:17:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:17:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c83443447bf7dd2e5e29190f44d8265ba89eab0880da92a5041c237491ec04`  
		Last Modified: Wed, 21 Oct 2026 21:17:41 GMT  
		Size: 181.0 MB (181001703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:28228be28e602d7f0c07e4cfaf81d1b2fc34a2bd2a315f7fcd6c7d2f40951d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.2 KB (587234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef90e624901b5ad6406c86319f78f7e1e94df70213ac88a06cd0f28e1dd7ef3`

```dockerfile
```

-	Layers:
	-	`sha256:6062f73b64f73a340201118307181f149f4bfd40c8876f937086920b1adb01b2`  
		Last Modified: Wed, 21 Oct 2026 21:17:37 GMT  
		Size: 577.8 KB (577758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b564e8b61369ef783ca77eaa326a5ed153f384b56acc45bcfd9d4bdc6d0f8b3`  
		Last Modified: Wed, 21 Oct 2026 21:17:37 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
