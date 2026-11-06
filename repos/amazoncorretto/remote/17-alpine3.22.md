## `amazoncorretto:17-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:021a906508f6b9806ab74cbfc13124a9e9efdd8c34d5c5338dec831ba9fb5c2e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22` - linux; amd64

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

### `amazoncorretto:17-alpine3.22` - unknown; unknown

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

### `amazoncorretto:17-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f1b19c6febfe686a1570b0425984d6dc9c1e97e74f94807088731f4bd809fe0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151792570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c570e2523610858e31ad2ea642a8f914ce0906bc0bb4d0a965104323faac11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:50 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:08:50 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e052665fa9863b2e26b9a9934111af851812a35560d89c1c5858737a73ba5d`  
		Last Modified: Thu, 05 Nov 2026 19:09:08 GMT  
		Size: 147.7 MB (147665185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:df8b534054763c368e86cc73a6998eb95008494cb33b11a57929448028c699f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.7 KB (592688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9301be0c0c8ac5419a0eb719d9bf37c62dc7a5d1bae400f43d37d77473965de`

```dockerfile
```

-	Layers:
	-	`sha256:a2f75a1fdaf69271253852e1abf4f93ac48ce293b0b2c808f15509eb10c9f43f`  
		Last Modified: Thu, 05 Nov 2026 19:09:05 GMT  
		Size: 583.2 KB (583206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efe83a3cdd2bc3ecea6b59ed91bd1c7c086d07507b90032f954d4d45f0d610a3`  
		Last Modified: Thu, 05 Nov 2026 19:09:04 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
