## `amazoncorretto:21-alpine3.24-full`

```console
$ docker pull amazoncorretto@sha256:58c1d555f4ff3be0cfe90d3b4d1762bde080b57afbb71d48657b9d22748cad5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.24-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:96a0e3279bc328e1fb37e7e6217a02d4b2204388c7e7288d94ac27f26c9521df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166045669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b760cb917f1a84745223bd05a6df8a9e20c86b30f70f529b8038c7411e246c61`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:40 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:12:40 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:40 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006c521f0d50d490016926fc532cd90579c5e825a0288421980d029766d60e9b`  
		Last Modified: Thu, 23 Jul 2026 23:12:59 GMT  
		Size: 162.2 MB (162199278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7bce439f021bd53fe279ac7583fc5866cae876ccd2c795802cb741ea8b6981fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 KB (594465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a6c0bfb4fb24bd9c4a15c187b60b7ac4729049f93968785b344801a837183f`

```dockerfile
```

-	Layers:
	-	`sha256:ed2e9e95adf9fad2d25f37c950749fc622323d8223aa0cba1d5b4efc0ca7088e`  
		Last Modified: Thu, 23 Jul 2026 23:12:56 GMT  
		Size: 583.8 KB (583783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f57e7a76ea7774a1762f8862152fb74323e922176bef0e1815dbd789258ab3fa`  
		Last Modified: Thu, 23 Jul 2026 23:12:56 GMT  
		Size: 10.7 KB (10682 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.24-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6675838de9ddf65c2d5bfb6def2aea3feb92d7ae520fb7c11410b396f7565a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164371650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ff0284d56fc6de6d39f833d32f578a40f6ff552f805c9af14d4db755fd2b95`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:26 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:14:26 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:26 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969fb27132d828c1fa2a9465bbe0040ab0c45c6dde2ead58da2ebadcc48d1c48`  
		Last Modified: Thu, 23 Jul 2026 23:14:46 GMT  
		Size: 160.2 MB (160188613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:39068dda6db649781d02cd069065d2d2899ba2d87dc3a7ceff70919946c6fe1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.4 KB (593434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05296bd8d2e379e80178f5b33092a90797d512d7951473bd8fd78721d9b88e1`

```dockerfile
```

-	Layers:
	-	`sha256:13cb97f7baa38ea9c5d868676467bd85cdb11e5a6a6d8d4c430e288df552e6af`  
		Last Modified: Thu, 23 Jul 2026 23:14:42 GMT  
		Size: 582.6 KB (582600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862cab877f85411d6a1f09938848038e673a4d1c9e3f73ef6d0ae0e02897ac33`  
		Last Modified: Thu, 23 Jul 2026 23:14:42 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
