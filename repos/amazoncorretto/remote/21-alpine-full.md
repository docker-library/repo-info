## `amazoncorretto:21-alpine-full`

```console
$ docker pull amazoncorretto@sha256:600e99e39da14b6a909027a924136c423e9334cb7347a8a77d5908bdaa3011b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:affe683cb1d6d6ade7f023fba442428df1a4d549a90c5f59c70925f61b8281c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166358279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae21aae62ad0ecb710a247fe8fc471a143c4da32d8114644e6b57d666b0ef95`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:28 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:28 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:28 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10506b98573fc52f312327af66070fe317acddc57241cf0c7ed418a2d8b1c6d`  
		Last Modified: Tue, 17 Nov 2026 21:34:46 GMT  
		Size: 162.5 MB (162504606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:44158cb25bc8b1bfa3378fce457cfe0566d83427646124d81b02dce23f433294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 KB (594469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9091b5541a7e1c81eb854a4e5c5375c484e9b785fff2a298a7c100ef0ea15427`

```dockerfile
```

-	Layers:
	-	`sha256:a963e37cc62140812952af1b38fab9839c45c86474a747d63547e261ca699209`  
		Last Modified: Tue, 17 Nov 2026 21:34:42 GMT  
		Size: 583.8 KB (583787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8ebcda1fc58269b663c1a7d66f9db15dd920ec157e833f2023c15b4b2b9c1a1`  
		Last Modified: Tue, 17 Nov 2026 21:34:42 GMT  
		Size: 10.7 KB (10682 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:557e5ba80f43286033ccdff58f0c1b1d05419b04832f3757de815c6c26d93beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164697384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972258aac4f37054a7183617f616034f0f35f9ed6cd41729c3e84ac2cea27c1b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:26 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:26 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:26 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c97a46e32e1c4e68ad47f0561940c920a9112057806fc50e25c72f904c3dce`  
		Last Modified: Tue, 17 Nov 2026 21:34:45 GMT  
		Size: 160.5 MB (160506789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ae7625ab555cb4e693c43f5c686aa24c20e50b555cafbf27d634572446de4ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.4 KB (593438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa49e188db88b51ce8df6380ea1ac1fc96f6c939248583bf66bf5f5da283f68d`

```dockerfile
```

-	Layers:
	-	`sha256:a9de45d4b29c7dd45a1f6767b7164ba340d206f671a0d84b556fcc7a6908cce4`  
		Last Modified: Tue, 17 Nov 2026 21:34:41 GMT  
		Size: 582.6 KB (582604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1e3c07c9d46c6b8206af29199b5c2afa32b4cec6aabdf37f32efaff8a5a9d80`  
		Last Modified: Tue, 17 Nov 2026 21:34:41 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
