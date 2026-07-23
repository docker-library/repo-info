## `azul-zulu:25-headless-alpine`

```console
$ docker pull azul-zulu@sha256:eb92acaa427c7159fb547c5bdb0bcf664fa333a7029148a1301ac4926e14b3da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a84a28e16b9627de0acdc4f8530d66b14d086ef07c3328f598427b5fe8f8c0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180891446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4daa26ee65c71947d7d5a8b9ae7a90d54270140f6da2a42d0ee9537399766b18`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:30:15 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:15 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.4-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:30:15 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0cedf61cd3d512086a84a59b39b5d208f83d760c5b366484a2c79d5940a42a`  
		Last Modified: Thu, 23 Jul 2026 22:30:33 GMT  
		Size: 177.0 MB (177047025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4d67eb4e5eab2bc1bc669ab3930c16ecb0def71f1c79c131b5c92d8dcf43650a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1e48698dd45da54a058ebdf068ab203e884c73105ea831fad1c348cfd74bda`

```dockerfile
```

-	Layers:
	-	`sha256:d2131aa3c6bac049660edc51b9ce6b42b8d78f4ca6599b01e9a2210782f1388e`  
		Last Modified: Thu, 23 Jul 2026 22:30:29 GMT  
		Size: 7.6 KB (7578 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a55a9cf99dd0fca3345cdd43ed876c00fc0b29a621642c0091d99bbdab5911c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178789724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a695ed73e93be7f1dabff7586ddd8551e4221664498fea1338d59039c496c18e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:31:20 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:20 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.4-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:31:20 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:31:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ea1f3c6917a506707d7a95f21f4b030220c38ef067b7d857b81c2b4bfa381d`  
		Last Modified: Thu, 23 Jul 2026 22:31:37 GMT  
		Size: 174.6 MB (174607864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1e851d7e5dc217bcbfbc2d439641ea7e56b55451624012f084497bacec779372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95e75c28130f25c30ea34e9c35e36e1062542adf2545c608b82a26afc4d5a60`

```dockerfile
```

-	Layers:
	-	`sha256:074dbb3ca2bfb1c41aca52e9bd907f79c2f6bc12f329421823591c414245146f`  
		Last Modified: Thu, 23 Jul 2026 22:31:33 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.in-toto+json
