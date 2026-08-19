## `azul-zulu:11-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:b1105829dd1444ea54c25185cc705fc441da54eac2e9016b8ad6bc88ac644256
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a7a0888ece4b2e81a3ab837066874779be2ae35bc5220db0ad6f37db86578936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146919441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d120a8a08faa001f94afb28a49b748d4248e019411399c0ea8029c3786267baa`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:40 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:40 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:40 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:34:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545ea3c5b90e531dc8bf354a36ef06e13a4f15f68f17cd94497e45bab41ff50e`  
		Last Modified: Wed, 19 Aug 2026 17:34:54 GMT  
		Size: 143.1 MB (143075020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4cf8d16623dc6170e2fd25c27423fb5fd80dd9e5167cdc4d3737ab7b5f0fe098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c432b3d2a5921a72a72fc0e791ee969488bab753b2e909a61de3316b521957`

```dockerfile
```

-	Layers:
	-	`sha256:ecb23674d41c1b20543ccecb3f459553ef57c23f0210fa3af9f1d0e766ae37f3`  
		Last Modified: Wed, 19 Aug 2026 17:34:50 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a2228ac1746a63ff0c4e7fd3c066dad6d28c436ee9e595990d205214e24a63d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145603347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca16732bae2d943bf4323ec35cc7b26ac921f136a8c234dcf2a1842e68d90ef`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:34:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:28 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:28 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:34:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1135bef0ef246a81c133bec3cc30ece25a9a3a2af93980730e471ce9257c3edf`  
		Last Modified: Wed, 19 Aug 2026 17:34:42 GMT  
		Size: 141.4 MB (141421487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0872dafb6c5180527e2273925239006f1b12698c9e72be709c143fc3f8121a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:136bf1eb9d475f9462e21d2a776a11d96db73a2e79fd307329544660be7c8872`

```dockerfile
```

-	Layers:
	-	`sha256:5b9d9f0331d9801e349e616ccb719b55e6c0168fd86b521379decde92c576f3a`  
		Last Modified: Wed, 19 Aug 2026 17:34:39 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
