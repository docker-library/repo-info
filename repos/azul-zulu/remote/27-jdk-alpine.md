## `azul-zulu:27-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:5085da6867b944cd0c2867d6f5079d5f1d64d455f56488a79330c02e141fe714
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:de585f63b74c84aa0ba58e900478f2124d0fff5fec3a1026ec571213974bba61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185882795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e1d88c1149d5f9d41634234e2c6c3b27ac78cf7fe44670c78e7cafb34ea401`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:30:20 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:20 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Wed, 16 Sep 2026 16:30:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:30:20 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 16:30:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01463523bca9af52a4421ca0a04c4f02ee8993a5ec249b2c1ab5b636f202db`  
		Last Modified: Wed, 16 Sep 2026 16:30:37 GMT  
		Size: 182.0 MB (182038374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7606f4ded27e43260e3e8246067ad4f57cc0d541c38e18a8d03757accdd3cff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4743b039f3fa88600971b2d5cfd66a2278d2762367d34da9d866e768cff529`

```dockerfile
```

-	Layers:
	-	`sha256:1377796c0d2d3e58407a441b7cf5ee41f6ff0e925a483ee3ab4245692c37bb7c`  
		Last Modified: Wed, 16 Sep 2026 16:30:34 GMT  
		Size: 7.8 KB (7807 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7734513c10561b264e76add99b08f1750a546de8b612e0282b777487ed157b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183807257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7712c29b07b93b1341a5bfc564192150f86c2bd034038978a4e4d282dc8ad5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:29:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:29:55 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:29:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk=27-r1;      java -version # buildkit
# Wed, 16 Sep 2026 16:29:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:29:55 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 16:29:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04607e4a994c664b538d2ca2fd659ab2a3e7664a498dc50c8c55e93c2c6917b9`  
		Last Modified: Wed, 16 Sep 2026 16:30:15 GMT  
		Size: 179.6 MB (179625397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8ed2db449aa98f11bda45f42943651c39cd34a2a46e73e9d7d8ee8c0c98a006c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d6ef868b6347752c94a510223269eef31a96115129cb4208ab2fa685f91c83`

```dockerfile
```

-	Layers:
	-	`sha256:c93b452fb2ec8907c126bffb978b27c0ec9ad6abec022f0acc47e1d3d9935ee1`  
		Last Modified: Wed, 16 Sep 2026 16:30:11 GMT  
		Size: 7.9 KB (7910 bytes)  
		MIME: application/vnd.in-toto+json
