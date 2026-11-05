## `azul-zulu:8-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:e4be44bf7128871ed1926f8a754a53d633cbcded2fcb6f80ed58a5b483453608
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:352719b951f119653196538e0eb3f987977b507999b341cf2abb774fe48c56ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59788427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a480532934516cefdf5a52b3b34188866d253976a2e3b5bd46ae73fb483029f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:54 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:14:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.512-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:14:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 05 Nov 2026 19:14:54 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3fa0b48bed04ee31a7b1d7a00f8326822c98a4158ca799f1cba3b027a8de2e`  
		Last Modified: Thu, 05 Nov 2026 19:15:03 GMT  
		Size: 55.9 MB (55935838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:454aad1edb08a46dc1dff71e595f5f6c82de025712be282638c7d3ec18d5be3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d98af6b98909ee2f671f38a5a56363e02e7cbaae5b7e0ba61f6a03fb7ca0fe`

```dockerfile
```

-	Layers:
	-	`sha256:903e2aa2c1400dabea245deee8d63c7786d3e63a1a4ca808c957c74ceef94f07`  
		Last Modified: Thu, 05 Nov 2026 19:15:01 GMT  
		Size: 7.8 KB (7790 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:632897dd3d46f1d9b270d94845d448ccf684495e3d02aa1ab9d08ab6f704da88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59885751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc81379b871708ea38d6ede2970ff650cd6d37f546e36036643b2f15df6bf3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:34 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:10:34 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:10:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.512-r3;      java -version # buildkit
# Thu, 05 Nov 2026 19:10:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 05 Nov 2026 19:10:34 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c5eaa0d846477b3155f12c86879e96aacbd423a10ff904b6fe5491a0dbaf74`  
		Last Modified: Thu, 05 Nov 2026 19:10:43 GMT  
		Size: 55.7 MB (55695530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7848c18d333017323ae9717026824068db4d9e3247020e09d4e2ff6b8a50ec84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fddfc55d88236677e07517bc01648a6ada3c55b6401d045e64986e88d7d21e56`

```dockerfile
```

-	Layers:
	-	`sha256:ead96415d9b7092c3de5f56617745ccc4eed5a39e38fee8567992aaed3a7b0d9`  
		Last Modified: Thu, 05 Nov 2026 19:10:42 GMT  
		Size: 7.9 KB (7894 bytes)  
		MIME: application/vnd.in-toto+json
