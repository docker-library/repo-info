## `amazoncorretto:11-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:85d5edf6feb8d0ef14178c29fe3b2bb4f074d6b38383c2d0bd0f624c57cd9733
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a2f2b52a6c1ca089ede0203978689bc5e40a66ceef532cabe33e246dd2454602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147880282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f70aee7d872d3d716f95c87b1ce26c0e741008f52f9074592ba12aa62ddde4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:46 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:39:46 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:46 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d149e75a93ed8cd6e434fdb5144a3df91bc93453842520da0054b24f29b2a876`  
		Last Modified: Tue, 27 Oct 2026 16:40:03 GMT  
		Size: 144.0 MB (144027173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c7eb8e19dbb50e6325569264a54a19f46128b401fe1b36b08f9f03cc923fe1e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9a70fa553e07daad6dfdbc5371fe7ffd633126b1998d0e01af9897d2535256`

```dockerfile
```

-	Layers:
	-	`sha256:e4c727114d1a8407514c79000e1799c1a16164f91b20edff9224e4a2c838e685`  
		Last Modified: Tue, 27 Oct 2026 16:40:00 GMT  
		Size: 589.0 KB (589030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5845ca611b64a0588bf5bfcf882069a1783a7689f3d91419c7a84a65df113e4`  
		Last Modified: Tue, 27 Oct 2026 16:40:00 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:123b09d1862dde82b27a5212c6ef7e0ae1521494b4ce34de5dd9678721f9e18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146573061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16872b7add1bd2b1abbd79c5b3bdf9f3763d183378d5b2a0471ac8c8c4aed308`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:31 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:40:31 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:31 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea493b5f277f8feb085794b3599860720b8890a1aa7f08a519a0bb0888fae19`  
		Last Modified: Tue, 27 Oct 2026 16:40:49 GMT  
		Size: 142.4 MB (142382573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e10d781095eab13badc063a1e48664172685b681ffbb609d0f5c618c10e62eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c45e99f831c3b857e34a3f90905fcdbf0af50e50115771e00f270dbc7478aa8`

```dockerfile
```

-	Layers:
	-	`sha256:0ad382eff944c8b81bf1856acac40d32259d52432ab55d7f70646f7e61d4b00d`  
		Last Modified: Tue, 27 Oct 2026 16:40:45 GMT  
		Size: 588.5 KB (588484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0434fae4e4cc6284443495556b52b30fbfb1f730c91e69c488c5f54e2212e90e`  
		Last Modified: Tue, 27 Oct 2026 16:40:45 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
