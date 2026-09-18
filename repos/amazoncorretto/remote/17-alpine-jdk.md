## `amazoncorretto:17-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:ceb42b95a920987d8d005ca8be7aa61844b0b39d159810dbd79a8da6588563ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:368120e1bf9fe0b8f3a12112d71cf23e6c2344a53d7e332f7d0fbc6c23dde484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152809556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16398b18682b333b1ca684f4a17ef988bf35829008844b87ffa7a37769bbb3c8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:44 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:35:44 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:44 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993bbac578af36f89b7a6850df27273b17d0dbc87debf7b215d0b02f607ccf05`  
		Last Modified: Thu, 17 Sep 2026 21:36:02 GMT  
		Size: 149.0 MB (148959818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e0dce2b8f290fefb59f87d1edac1e467fb82e0228d7677e60571457088edb859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aca31d56a93b8b381a78dc3e9968a92edcb30fd0ee13108a52f5f93089d6386`

```dockerfile
```

-	Layers:
	-	`sha256:71b96d36b034929cc5fdd8820a2ab75b4233fe5f6f525e2643f5c329d64ea8aa`  
		Last Modified: Thu, 17 Sep 2026 21:35:57 GMT  
		Size: 583.9 KB (583886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45cf26dd79c5c9633958740dd41d17fa0e3511650db23cf879b450617524e1ea`  
		Last Modified: Thu, 17 Sep 2026 21:35:57 GMT  
		Size: 10.7 KB (10686 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:dd8c416045ec46c4c1277c383ef4cbf494f425e96d8e6bf8e6099dcfcc79d995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151563617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c555606df7bdf620625f4eb4f28ed44218877c49ac2f3e0e2c92b0fcc1b594a7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:50 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:36:50 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:50 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0194bddf375d28cb541b24721d1010fa1fe910eefee3a10926cbfd3d6e3e1`  
		Last Modified: Thu, 17 Sep 2026 21:37:08 GMT  
		Size: 147.4 MB (147375958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:08f62f9b8c7defed01008d6c7a754ec6406ffeeeb1ebe9b17196f448e061395f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbfbc17b2bfccfc51950b9dd94a6b57a463019ec3b79cdc86eebce48794503f`

```dockerfile
```

-	Layers:
	-	`sha256:6b3fd87b67fba377682d981b469ea536358db21b29b8b5670bf89f69388797a5`  
		Last Modified: Thu, 17 Sep 2026 21:37:05 GMT  
		Size: 582.7 KB (582703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d20ba63b27c55eb3e61a2cd00ba42eae80d8122776863f6bff2f5cd9e0fc86c1`  
		Last Modified: Thu, 17 Sep 2026 21:37:05 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
