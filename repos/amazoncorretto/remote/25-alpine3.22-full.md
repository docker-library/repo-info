## `amazoncorretto:25-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:775fda8fc10aa8593c4added5cdd43af6d5504f35ff22f130b0505956c6b9ed6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:617fdb09c674c1c058c409f1460fcb5153eb770e2b53221098714a0a070d6dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185293910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4542c03ee60a5c19cf80ce0c4fa99626433d8c5cdcc78f941beaf97d644bd5d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:31 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:40:31 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:31 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2f37c939f764a12c4363c977d5f8d0104e896c3bf7a3f1e18d3ac5f69cb8867`  
		Last Modified: Tue, 27 Oct 2026 16:40:52 GMT  
		Size: 181.5 MB (181499553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:98caf2ef127f6d71422ca7e8fa1a4328fcaccda48a86febb6eac917e90dd8a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.2 KB (602158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461e02c8fb7583d4d654b98f53ce7fab5a3e9eb1f22493b62aa6dedd11e81ea3`

```dockerfile
```

-	Layers:
	-	`sha256:c7ff9f764c5cd1558730d66f6dc77565d727746495ddfa8a1c2772e58422a713`  
		Last Modified: Tue, 27 Oct 2026 16:40:47 GMT  
		Size: 592.8 KB (592786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1c648e1790ded431f5cf81a8ebfd87db117c68e4bece2a5b092b27819d2d637`  
		Last Modified: Tue, 27 Oct 2026 16:40:47 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:45e373ba50112e8a97b1837ca19f887955d67c7ee5b1274a26c7052549186b16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183202746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156172dab7ce457bd2dd9275b55310418aa86f337e4e8ed43aa6f705b369d542`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:02 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:41:02 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:02 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e269358a3c5bc735fe9605ee953a0af64bcac529b3f39366e2dae4b649322d5`  
		Last Modified: Tue, 27 Oct 2026 16:41:24 GMT  
		Size: 179.1 MB (179075365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:edc06348ffad55f62f0abf486d28b9c83464dadcf99eb176437897e6712bfc24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.7 KB (601678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20adcb1187db143743490f0286a5b244e2a3c4b6dff63ba2dbbd72072ef4f761`

```dockerfile
```

-	Layers:
	-	`sha256:226a76e33c5681f6f6a50852c6d2b5d436097875b0e54b84acc127d5e2c68dc2`  
		Last Modified: Tue, 27 Oct 2026 16:41:20 GMT  
		Size: 592.2 KB (592202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e6fd1fd60479af53d53d761881c676fb07a9fef875ca72bb32754234e7e9937`  
		Last Modified: Tue, 27 Oct 2026 16:41:20 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
