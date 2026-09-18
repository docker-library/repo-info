## `azul-zulu:17-jre-alpine`

```console
$ docker pull azul-zulu@sha256:e184bddf8676b8ef6d0f6dc4e97d7ccde12af02de427bc76e239b0a4de7f1cdb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:95db0b98f6f40ae0a27684bb22541a7ebf19d882d0a1e36260405b657b6ac1dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70164961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b859fbc15c23980287998898e22304da501cf6b07d4c8d8aefd354b50a7fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:33 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:38:33 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041f0f4f664b938d28b387a08f334ac8796ffd31b5f72f3321fde56b7e9de4b4`  
		Last Modified: Thu, 17 Sep 2026 21:38:44 GMT  
		Size: 66.3 MB (66316454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:81615822b8a075fd78dec383d9bba100b896c5f6968bc14b75c59bb9d29eb154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d5929ad96f4bd468bc3ac523df176354a3c3c9f9131dbbab40409becba916a`

```dockerfile
```

-	Layers:
	-	`sha256:e94019bcf62f52e3b787a8b93d7afd934fd350717a8680766e08834f8555d2e6`  
		Last Modified: Thu, 17 Sep 2026 21:38:42 GMT  
		Size: 7.5 KB (7492 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e320b052f9f9b84bd89335f0fd3b620cb0632df6fbee9efa39943291d14badae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69843156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56511c322280aa6dc8f86ce564fbb4297ec5dc6e3cf3ec0c7c129860a0aa5ac7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:44 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:44 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:39:44 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa418dda4612c4b37d493a59a0045f99926e40e9135d040c6a921f6b2f4055e1`  
		Last Modified: Thu, 17 Sep 2026 21:39:56 GMT  
		Size: 65.7 MB (65657100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:99e6d5a4d8a9e1ac5df972cd2bb6146ce4802f9afc8f7bdf1c92a9c61bedf305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9d1c39ebf9c537c80582ad89ffbc981cd88e4a681808b183760cc48d6ce6a3`

```dockerfile
```

-	Layers:
	-	`sha256:18fd10f14ea7e546897299ca21a49b031c57e124c39e3299b773ef728a4a46e6`  
		Last Modified: Thu, 17 Sep 2026 21:39:54 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.in-toto+json
