## `amazoncorretto:17-alpine3.24`

```console
$ docker pull amazoncorretto@sha256:7fab26e32723f81f70e3a5879feb05d321d73a22c84a900b314c14859788f1d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.24` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:874796d0f46686bf148c51f2177249710395a2fc54dd01ce8a1b4cbb9c933bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152816740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144a5da920ee269af0036c9ef53649649911f4788ceca6a8f3ef4256a82d3478`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:19 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 22:56:19 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd62eb337d388c4b18b1f14b71ca7b7b6c97c4a1da30cda8bbafa4f4b99423c`  
		Last Modified: Wed, 21 Oct 2026 22:56:36 GMT  
		Size: 149.0 MB (148963631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2f3f0eaa7c97174dc40f2d71544d4a3342d7926c117e884471276f19e6e34743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd9e5fbe0ac127dcf8722b89d9256fb2c13d062951bd2b8787eab03f304ca13`

```dockerfile
```

-	Layers:
	-	`sha256:9150f8d56192382c6f017bde7c48e9280532667cfd818e3654f199178ba951b8`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 583.9 KB (583886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a7171c1904e8028f89b713ae9ca1ec6939cfb1d4c2018a0f4ab82428dcb321`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:839cf7e0caf88c63d4d7d467ef05d6b4bca2d7e80e479d2b7a4151832e2893ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151569105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba0ecac506fb37582273a781ac8a51716d820fe55a29db34205c17de40f3409`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:03:35 GMT
ARG version=17.0.20.12.1
# Mon, 28 Sep 2026 18:03:35 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:03:35 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:03:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:03:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1c2874229cda9c9979aebf42074800618deeca0af610d920d425ca8bd919d9`  
		Last Modified: Mon, 28 Sep 2026 18:03:52 GMT  
		Size: 147.4 MB (147381446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3d2fdf48da7565bd1df62d7d410de0ab252ef08b70ce83bc9262610d85dbef89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3754e0e6723d87bf7319b12160789ae4731db09d02687751e10a885f041236c5`

```dockerfile
```

-	Layers:
	-	`sha256:79867709f297a8248f64057a60d220380b99f63e807da0294382fda9b2a7adb6`  
		Last Modified: Mon, 28 Sep 2026 18:03:49 GMT  
		Size: 582.7 KB (582703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dd10a575bdced5fc6c4db30186baa9989684c38b84955deceb6acb67f1adfa4`  
		Last Modified: Mon, 28 Sep 2026 18:03:49 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
