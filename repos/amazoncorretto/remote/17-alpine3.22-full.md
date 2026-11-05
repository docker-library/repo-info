## `amazoncorretto:17-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:be6342928ad84b5f94c1e2b843a0798c7a96cbfecebdaab93cf0262d4e18dabb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:92cdff306e26329894ef0fab79f8d120ac0acc08f3b675206b66a7da85316043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152987234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705809e7ba9b4bf50d20d5fb786bea6fd5197d5d6645f129edc6cf6127c79d6c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:01 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:13:01 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd680e04e0245b3e97a7869957bbd29b32b4e1b5bed0347af320bc58a8c07183`  
		Last Modified: Thu, 05 Nov 2026 19:13:18 GMT  
		Size: 149.2 MB (149192859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e46f879eb851a85e721372dc6dafb2467a487627ed08ee02098cfeecf5c331b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 KB (593166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1158650c61f1190416d168cbaf946d1fdce811a70c4604bc6b4d6e712d799b8f`

```dockerfile
```

-	Layers:
	-	`sha256:df44b2e788591ad56b9dd3c5bdf1b574a03040c522b610877239c3c07fc43fab`  
		Last Modified: Thu, 05 Nov 2026 19:13:14 GMT  
		Size: 583.8 KB (583787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b489db6283bb2e7340714360262b51521b8d869b00640e78070a41eab9e0b354`  
		Last Modified: Thu, 05 Nov 2026 19:13:14 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.22-full` - linux; arm64 variant v8

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

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

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
