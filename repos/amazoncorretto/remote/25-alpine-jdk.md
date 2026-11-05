## `amazoncorretto:25-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:83136b3927a7e546136942c8b8882e055edc8e9d71be98e8ff195bb0e7c85326
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:506d6d5668e2ef9b549424307079126693e66b9500daf22382a20efb568db205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185371960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee949df7baaa7e75133ff896b2a9f60943368caa23992ae38486762cab2b1820`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:13 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:14:13 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:13 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6885d20d310accfe25337a23f30b70168b98a7d67e4540736056ea92f01f85d`  
		Last Modified: Thu, 05 Nov 2026 19:14:34 GMT  
		Size: 181.5 MB (181518287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7124442615184e2687f7baaf2e2c867d13759836bddc66a1dd980fa048f26798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.6 KB (603557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc4efd16f200e1b6949ba7480c1d31797a91e75b4b78ee2b3bd122a1cf7b7d4`

```dockerfile
```

-	Layers:
	-	`sha256:26e34e5b661141a4474b8c2fc01329fbbeb79b3743faf18b1c22a1a0ed41f1a9`  
		Last Modified: Thu, 05 Nov 2026 19:14:30 GMT  
		Size: 592.9 KB (592879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cc18a4ba7301042d5dd13d658d2efbba920f2821405be3df122a2bf72d900f9`  
		Last Modified: Thu, 05 Nov 2026 19:14:30 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine-jdk` - linux; arm64 variant v8

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

### `amazoncorretto:25-alpine-jdk` - unknown; unknown

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
