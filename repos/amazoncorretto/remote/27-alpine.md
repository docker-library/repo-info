## `amazoncorretto:27-alpine`

```console
$ docker pull amazoncorretto@sha256:eb901291ad1d6cfe6ed09554df203ed4165c69da78133e6150a5b4b287a939da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fe33a21313ed7e2fc4e891c153053e8bf413b8308670ffd54550d3036a9f4612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187243225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e0bb04dfc8313a9f5d1dc5c16d43c3885cf2965e6ee242d0781877bf3ef227`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:42:12 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:42:12 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:42:12 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:42:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:42:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d42303aa49ad1fd522e1a662650fe928643edf8e76cf1bb453ee6adb07c8a1`  
		Last Modified: Wed, 16 Sep 2026 23:42:32 GMT  
		Size: 183.4 MB (183396834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:183ef65fa8999ffdd468857c9f69cc8f9ca4ba42272e5ad97b4c9e646e37d714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **589.1 KB (589113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de03e80e9b32440faaa93ffb294d1584ebec17f4c63974301032642b38c4617`

```dockerfile
```

-	Layers:
	-	`sha256:99cda4b965be9c873fd1a2151bd23d8ba97d068ef8d72d99314f697ed4739161`  
		Last Modified: Wed, 16 Sep 2026 23:42:28 GMT  
		Size: 578.4 KB (578435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aee001e37bb676c72bc2188023238ad0079d26ec00410b83029d25e1fb5ee02c`  
		Last Modified: Wed, 16 Sep 2026 23:42:28 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a0f9215ca4966e4e11fe76f0f6434703e0359bdb8b6e4d70130b90b737a4afeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185199297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54657f0f6d3b9267d6b6fc780e9534cca1c716e928274d8880cefa6d43e86c1b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:43:55 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:43:55 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:43:55 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:43:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:43:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc054274ccac45b94e820362fe176a2b9b81e2137188a3fb54cd878c0da7dd51`  
		Last Modified: Wed, 16 Sep 2026 23:44:16 GMT  
		Size: 181.0 MB (181016260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b2d465ae922e0a902e0235d92eeddaa2aca8a10ace59fff6cf26d80f8699b861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.1 KB (588079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f889b10b25daade2ef28299864abe189d3ec547bfdb4ec72157dd9be6d5415fe`

```dockerfile
```

-	Layers:
	-	`sha256:e7524a763317c7d727b33942d0b978dd4fa4eddb4aba5f638970948e46e37426`  
		Last Modified: Wed, 16 Sep 2026 23:44:12 GMT  
		Size: 577.2 KB (577249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbf0b08118a9c4f8cf216f576129a56eba28387462f06c2c3abae8be8921a50f`  
		Last Modified: Wed, 16 Sep 2026 23:44:13 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
