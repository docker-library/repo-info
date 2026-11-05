## `amazoncorretto:11-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:dbdd50628d6b903a4465a81a4d41a3c7c86656fb3e475ad72a48afa5841f4082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d4b8609bed7eb27dd8cf1bcf611e3bb2b168c271e9c24496e9883e025a61c08f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147802256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4f1b3f2866a2e1e265d3661d30731d7f82130b8c5647e50e370e29ab3647f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:37 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:37 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192d8fc8404444b4e7f01602d45c17c05dd4931ebb9ee9281d1e14ab30a33c4d`  
		Last Modified: Thu, 05 Nov 2026 19:12:53 GMT  
		Size: 144.0 MB (144007881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:379c45c1929c21572e47bea20301ea4f419c06321fd04bf13ee25a9a1c832382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac976fbebc47c143641c3ab72b1dce3d62e40e347152fe7fa24fb495fe1d447`

```dockerfile
```

-	Layers:
	-	`sha256:936eff8b1b615f5c142812d7c8801fb44f61c032da585854ac6d183e00e946b2`  
		Last Modified: Thu, 05 Nov 2026 19:12:50 GMT  
		Size: 588.9 KB (588935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be7415d7449d1a71020b13a3ab38d5c703b4e5311c14596d606272febcd69d97`  
		Last Modified: Thu, 05 Nov 2026 19:12:50 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:653f04509a096c5bdb1b41384c1e589b30e4a1158d15fdf7e0f87a24b8aec90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146493741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56e45547e4e496cd94e4cb6abbf7183198d3ec608e74e39e0d49a1bc772634a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:26 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:40:26 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:26 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6891260d06a88ef63461e1933fa1136309af9d5f64ce03f90b6185b3592341f`  
		Last Modified: Tue, 27 Oct 2026 16:40:43 GMT  
		Size: 142.4 MB (142366360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fd254372d7b57936d779258fc92b17bccd817138fcc8eae418ba9ca4df695367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855e2553e27f5161ba21508a45c200ab6f50d5dd33505ef72187e5f3eb92b39d`

```dockerfile
```

-	Layers:
	-	`sha256:da6a52ca7787e1257a3c4565d2586bcca588443dfd26ee6e41f392da1df1071f`  
		Last Modified: Tue, 27 Oct 2026 16:40:40 GMT  
		Size: 589.0 KB (588991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c13efb6c70be5bdd9f50edcef7c743cd3c652c625d00826bf045ac14588a358`  
		Last Modified: Tue, 27 Oct 2026 16:40:40 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
