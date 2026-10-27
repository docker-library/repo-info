## `amazoncorretto:17-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:1a89f11b4e6e170c4e1b19dc2ef80f9a0686e6c0ec9e4dbec64bdad319e2d2d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dfad85f3f8cf8d733990bebac1b0a1484072e4de21e36b0d8b4a81814c67de69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152987201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a54e3032fd85669da5c5953d6f8a75ae54118e1ac808533348655be676e2c5b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:54 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:39:54 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08296603f247de9e9d1c1951e313b5268f18a61f4e6f36921155d1f6e09f0661`  
		Last Modified: Tue, 27 Oct 2026 16:40:12 GMT  
		Size: 149.2 MB (149192844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6c74139b884ff582b75c27d7efe26052d37e4ff4321c16a9043f23242d2a52bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 KB (593166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d3c6d1e9cad807c43a7bb401a90e5e8d5f8f72bebfdc9b22b8d95209d76410`

```dockerfile
```

-	Layers:
	-	`sha256:074143923843e7b28a05789eeedb4e278bf14b295b8fd805ba3d42c88b5f7b51`  
		Last Modified: Tue, 27 Oct 2026 16:40:09 GMT  
		Size: 583.8 KB (583787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ad7db3e8c72e2fbe37005a6929a7d0f714325e96970462745650cfbd2ad0432`  
		Last Modified: Tue, 27 Oct 2026 16:40:09 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:09388fd91dd1b64c01b889c4659b7d377b3ec0b50e3951c754cde9f8897f4df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151792591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d151e0f5fe9a139fd38f07635adea04bc31279d7271a63f03197053d0040a583`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:47 GMT
ARG version=17.0.21.0.11
# Tue, 27 Oct 2026 16:40:47 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:47 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6133d6a3b93214f183297ca9a5ea19345be771c825d92dc5a9a68b293fb7924`  
		Last Modified: Tue, 27 Oct 2026 16:41:05 GMT  
		Size: 147.7 MB (147665210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f0fbdd66455b5360a31abdee6860521e9b0bd6b2961e694a07dd2ce38ec80c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.7 KB (592689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dfe11df9df18b853f02e2f57dfed65156ea968a7dc136fb7117a8abe3fae8c2`

```dockerfile
```

-	Layers:
	-	`sha256:e5b70ebc4941add141867f708d029f5844e6c50377a91c909b33e1156e466b49`  
		Last Modified: Tue, 27 Oct 2026 16:41:02 GMT  
		Size: 583.2 KB (583206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d711d4a0ce6e8611017509a7a9d7f8ce566d6ac5c57669ae1875217f6d5139fb`  
		Last Modified: Tue, 27 Oct 2026 16:41:02 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
