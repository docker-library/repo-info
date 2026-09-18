## `amazoncorretto:8u504-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:e54c59f85778ced94c391bb343b6862e4a71a82be5c6948e17a5077722300d5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.23` - linux; amd64

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

### `amazoncorretto:8u504-alpine3.23` - unknown; unknown

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

### `amazoncorretto:8u504-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:640949f134ecfe2c8a287cb38395923a6fb34663196689ce56a8cf3746e05338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104836831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bca9d3011159006884aa0059c5ab6831c78330300a3f0929d50d8dae16d7f53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:31 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:31 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:31 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280666cefa54dbe752fc38fdc6b5d118227ecc5fbc85cc6f477fa8028f47eb9c`  
		Last Modified: Thu, 17 Sep 2026 21:35:45 GMT  
		Size: 100.7 MB (100650775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e492bb529d7ea629fef3748cad858bb607af8ee8bbc88e8f327f91e5bcea7e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 KB (255336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4ef7d1e3152a21b4ac30709b9ed4633a3c014c672bde95db291032c5fc94cc`

```dockerfile
```

-	Layers:
	-	`sha256:69c2048c8e41975a1b8cbbb2767700781974d0730709b7ec9c7bbb013561701b`  
		Last Modified: Thu, 17 Sep 2026 21:35:43 GMT  
		Size: 245.9 KB (245877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:139b163d09e91283078daeef0bd0220c5f699458965af1db94a33af34857acbf`  
		Last Modified: Thu, 17 Sep 2026 21:35:43 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
