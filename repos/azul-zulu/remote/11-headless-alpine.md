## `azul-zulu:11-headless-alpine`

```console
$ docker pull azul-zulu@sha256:b490af25d5aa2ec9c02a55aa678adfb662bd7804b838d1ba574aa9de1a9c0227
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9cd8708e08c97d3047c71b2a2ae9e98f2f188f755433a46e7375547941b8dc3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143905511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1045440ad39dcbf969ade306e68f1ae4101562b4ec9c9e6883333a8f0012b8`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:00:31 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:31 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:31 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:00:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f22efcea904f13878dd25132a98fadd0294d10ee8045b376184c96b05cf9179`  
		Last Modified: Fri, 23 Oct 2026 20:00:46 GMT  
		Size: 140.1 MB (140053284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:75cc0641ce4cd58206390f8b7149fdfaf155b04825fc6d8b3b5948c0c82caa34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce642abb89ca0ec63a49e472a0ed9b4cf0d5ee9f7fa776b6558d12449d69ea8e`

```dockerfile
```

-	Layers:
	-	`sha256:6af4b0bee8664db29e813c3bc714acddc157b21407a5624dc2d351d256347e3a`  
		Last Modified: Fri, 23 Oct 2026 20:00:42 GMT  
		Size: 7.6 KB (7581 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3f4cec97392bd7864f41348ea39c90105b3e5abff45d8150b59e189109654370
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142538708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc8a0e461f3bf7134adc41b1f6b7b6b6e9f421e4bdd0e3a7c905256dfcb01e5`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:01:38 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:38 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk-headless=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:01:38 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:01:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7095c699109342ebc25a1c23145d97fd98cbedb02d7af31cbbf8c779bf92cb4c`  
		Last Modified: Fri, 23 Oct 2026 20:01:52 GMT  
		Size: 138.3 MB (138349214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6c0f8437621e95b7ca6cb9ea8da3a6a0e01993a7ac0fe196b57ced4992ce4681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce22286d32906c9cdf512167c13213c253e9f10db09f4de2cae8c9ca554de188`

```dockerfile
```

-	Layers:
	-	`sha256:315dcc15fecb0bf30a8c51741ba8370cee9886c84c487e1ce705bf49ba906933`  
		Last Modified: Fri, 23 Oct 2026 20:01:49 GMT  
		Size: 7.7 KB (7673 bytes)  
		MIME: application/vnd.in-toto+json
