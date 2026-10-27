## `amazoncorretto:25-alpine3.24-full`

```console
$ docker pull amazoncorretto@sha256:e3ec06bdc025f54f1dbeeb92a8cc537665371badec999ce832c1cb6c00a2c828
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.24-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2ff7d31900f6dc1a43c6bccb65ab1ede9d0913b6376319a06b5750420c7677e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185371275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b477d39bfbc0b3e72b23b24a2207ff6b2a59bad2bd140d5bca815eff825aa3a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:40 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:40:40 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:40 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e01597ac1e0ae5880a75146e192763d95566a346662f0cd22b27e77b65af2d5`  
		Last Modified: Tue, 27 Oct 2026 16:40:59 GMT  
		Size: 181.5 MB (181518166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6ed8c2fa0caa6c8f86920ba8468039a33f81f58eae58255b99d99a2bfe63e096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.6 KB (603556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51a557af325111dfa1498b236c30442d62da5e4fd65e656c7c6cbb027d220d7`

```dockerfile
```

-	Layers:
	-	`sha256:6fee019f7522db65f6e57fb79a7e5f737ea75a174a3088aabf05c9f3ff0aa237`  
		Last Modified: Tue, 27 Oct 2026 16:40:56 GMT  
		Size: 592.9 KB (592879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37705002014098682c686b932d9a13ecfe30f68c50326726efc51ae2e0821602`  
		Last Modified: Tue, 27 Oct 2026 16:40:56 GMT  
		Size: 10.7 KB (10677 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.24-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7fbb773b1e38a8d4f0a83205cc93b02589ec9e02478b2d190cd51f4a789df73d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183282849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d25e82fc3cf953b688bc948c7f09e3a73b7f5b70db582261db75497186ee070`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:14 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:41:14 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:14 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9836628083289df154df91e6e5036abc886f826a723f4b41108da095d307980`  
		Last Modified: Tue, 27 Oct 2026 16:41:35 GMT  
		Size: 179.1 MB (179092361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ede390f7b3feb8353e0bfa13754c7b7fe2fb9761cddab3aab1f705c3ad7d5d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.5 KB (602523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863cf78a55620520b9c17364c6fbe9bb1b8834f36bb865ffb94ea0b81398e9e1`

```dockerfile
```

-	Layers:
	-	`sha256:1841ab48b059f9812593066e2d52af2c2b083e726c1eca56b1ad7d752fbe9bf1`  
		Last Modified: Tue, 27 Oct 2026 16:41:32 GMT  
		Size: 591.7 KB (591693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19238a3c51b155874b5ab5d4266e2d70c6ad383e9a82da23d3ef245f408e14c9`  
		Last Modified: Tue, 27 Oct 2026 16:41:32 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
