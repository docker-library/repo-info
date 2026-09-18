## `amazoncorretto:21-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:9e690d83730561f0238dcce7fac79a201ed05fde45a198936f6bf5b212b61660
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e29d94d3749fa3d76fd11eed59ef466a99dee7a327d2640e831d1d35ad195c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166050216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6c8895b62ab0017abb7d8bdde69dd939ba43e7c63699eb2e6335409d0a7f58`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:58 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:20:58 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:58 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1651595685cc0eac88660f9ca02456ac3b15e74180cd422f506f1015521664e5`  
		Last Modified: Thu, 20 Aug 2026 17:21:16 GMT  
		Size: 162.2 MB (162203825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:627e302feadf8197b9e410659982ce67d97e7c1dae6be687eee17391cae707b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 KB (594469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a998c22f13b318053308aa986259bb43ca05ae90ff1ef80069a5882155d12a`

```dockerfile
```

-	Layers:
	-	`sha256:94cf155ad6d1a596d9119ed6eb1dcf00df91126bf56f4da46becc32e6c44dd42`  
		Last Modified: Thu, 20 Aug 2026 17:21:13 GMT  
		Size: 583.8 KB (583787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb6a1f7007a93f0c8bb2831619fb182d799075963a324fd0f375aacfe7bb5c78`  
		Last Modified: Thu, 20 Aug 2026 17:21:13 GMT  
		Size: 10.7 KB (10682 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:731a624d709dcb2093efa4ca03beef4855793e28733e26f6cf58c82f4e0dc2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164382262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2c113f437169aaf8424b03cb0bfd60011cc84a9ba542be5a8405a810efdf76`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:18 GMT
ARG version=21.0.12.9.1
# Thu, 17 Sep 2026 21:37:18 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:18 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1acabe62eb8b757cee607e9c44185dd15c3e39f132f36c7aedab71904af9397`  
		Last Modified: Thu, 17 Sep 2026 21:37:37 GMT  
		Size: 160.2 MB (160194603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ed6a101d7b147e19a2863da024940483dff79e873b2961643e96c74b30d1c6ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.4 KB (593438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30acd92c42baf709bd73fa72dbcfa5db70221828aa069ecf89909ef0aecf9d7d`

```dockerfile
```

-	Layers:
	-	`sha256:783ce891ba735bf60ff20ab5d928cb5f5843898b18ce73e889543cd4c0e958a6`  
		Last Modified: Thu, 17 Sep 2026 21:37:34 GMT  
		Size: 582.6 KB (582604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e4ee607febb95a8c0d4d871b4beced85d3c6f667694bba13cf09d682934f1db`  
		Last Modified: Thu, 17 Sep 2026 21:37:33 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
