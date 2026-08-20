## `amazoncorretto:21-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:82ff860bfaaf45fe240d53d8581d1be307801d497adb4f1e07ad8731d8ffa279
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7968bbf01ae8671896379baf5edad1d734b562a375a8da57e7cafb6fbe3fdf02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166024366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a30dde4792fb1f804d3e1e7808f61d3df7a243a13274780cebc654040010b91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:51 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:20:51 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:51 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27d3214471fa51f6818f62904ae935a4e1b9a3692c03b4388b8cfd745e94c63`  
		Last Modified: Thu, 20 Aug 2026 17:21:10 GMT  
		Size: 162.2 MB (162179945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d1228f55a1c239093fecc2b6a46cb8f00ffff0eb23e5985f386ee8517d0ed967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee51d880a4591dcf422ef649a044b36d06d66e2238729a06a53af6499b995514`

```dockerfile
```

-	Layers:
	-	`sha256:9b970677ebee4fc798d12d189f365e9be826ea7ef773d532feee5098f602f83f`  
		Last Modified: Thu, 20 Aug 2026 17:21:06 GMT  
		Size: 582.4 KB (582408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86f9f8fd0f091602c38d74ff50b34231cbdb68c3d051b774a1a69b447a0a0218`  
		Last Modified: Thu, 20 Aug 2026 17:21:06 GMT  
		Size: 9.4 KB (9373 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:434d404d30fb7c44a11829448ac7bdb4bb85f102a87516b2355ec132ac909363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164361218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ff4c02ac06fccd0d5a4b02e6b9f98a2532bfd9bdf4eba096aad08931bd7c95`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:17:33 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:17:33 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:17:33 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:17:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdebfed49c5f4701eb7906dfe861fff3c7233216f0ec70cfe3c5c326465b2f0`  
		Last Modified: Thu, 20 Aug 2026 17:17:52 GMT  
		Size: 160.2 MB (160179358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:99d624673a1a9fb9ac372973a6a5f455fc6c2b054f23ffc7dba8650dc14c07c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e0c0dccdaef44cb793dacbe19c04a1427a1a0cedf6993839f8f967296cc5df`

```dockerfile
```

-	Layers:
	-	`sha256:d004d915367e17374600cc99d13fba6dfeab8e3667262cdf4bcbc334ade7ad90`  
		Last Modified: Thu, 20 Aug 2026 17:17:49 GMT  
		Size: 581.2 KB (581177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54e72ebfe9d9ab97f1017220f0c883cfedf32ce7a49667733df05d4f69837f1a`  
		Last Modified: Thu, 20 Aug 2026 17:17:48 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
