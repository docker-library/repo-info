## `amazoncorretto:8u504-alpine3.24`

```console
$ docker pull amazoncorretto@sha256:5199bfbed72dc0c1e2c12b5380aef645204b24203c1c24bb5ad34124a39c2df6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.24` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f3c874e5393026b767315551f0954826ca93e49ee9c2568d29ec1da29674c7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104667693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d648ba0b203ef8517e2417c3ce37303271e19c4bd8ed0f559747947baf7f4e8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:32 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:34:32 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:34:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:34:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:34:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e09adac6e711730e119ef9855a3927546bf95918fd11ea8a75938336134434e`  
		Last Modified: Thu, 17 Sep 2026 21:34:45 GMT  
		Size: 100.8 MB (100817955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d5f68e1da34c1859f96c52d1f809ab20ebcc23949cde7c26541fe5a57af3bb06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2231fd3e6198405f840a57739bef5311f24d60fbf9005e58d329487ab859f05`

```dockerfile
```

-	Layers:
	-	`sha256:e2906a93bef8da2325178ecff006ca5bdb53276be9dab39183b199be553494d8`  
		Last Modified: Thu, 17 Sep 2026 21:34:43 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b216afb6d7d5c6da3acdbfdff61402ca53bfdf5e7a176bbccc0d865a85e402a8`  
		Last Modified: Thu, 17 Sep 2026 21:34:43 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ffb026a5c55490c549a1ac301dc1150af6da2408e7eaa43a7dfdcd331aea40b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104838622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd49fec383ae072c4ab12e81781913924756c4bc770c336e15d548c1a6f07ff5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:43 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:43 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5be26254efa5a3ba84ffd69f8e608f000096202c08626edb18a4dc651a7783`  
		Last Modified: Thu, 17 Sep 2026 21:35:57 GMT  
		Size: 100.7 MB (100650963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ed0fda45967197b1285ef8aa7019f773df367ca9170c9a5bedc84e8d455adfec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355b8290a51b61b310069b58c40fce5a5c81f53a3cacabc3df581fea54abec3b`

```dockerfile
```

-	Layers:
	-	`sha256:281a5db8dfbcb04de652178940d53c028ffdc7ecd792cbf987a31144d0ae3859`  
		Last Modified: Thu, 17 Sep 2026 21:35:54 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7478cd0ec06dbee7b86c607d762a2390843da6c416176a42e439cf656e3ac8d1`  
		Last Modified: Thu, 17 Sep 2026 21:35:54 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
