## `azul-zulu:8-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:3689a5d33f2910b8379d3433c53c4b34c320b81cee1a2ee929fb69b3ed557474
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:98369770c5207a866bbef978c0d9b9a3e74bf626c48a7503488a4991e5408cfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59760892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d65f44ebd4ee8fab79e41a18c88711c43c43745df564c488a1bc98b94681b00`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:27:54 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:27:54 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:27:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:27:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:27:54 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9aaf9882c29b89009347eaf4dbc4fbfe9900dc1da56bc19b2314b13f26e8f13`  
		Last Modified: Thu, 23 Jul 2026 22:28:04 GMT  
		Size: 55.9 MB (55916471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8eb4b024346fb4cc7e87760bcf7ef42e182228c9b94bc930ca5f0189353e68bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2fcc343b0c7385df619c1c6d4e28e8dc91f09ea2cd698d66d322e23cd58839`

```dockerfile
```

-	Layers:
	-	`sha256:1cea69a944b2a51c1f7ee3859523df716e06122f98baee653a1b60c6db35d042`  
		Last Modified: Thu, 23 Jul 2026 22:28:02 GMT  
		Size: 7.8 KB (7789 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:99f3ce5a1604b20d2e3c63eecd217d90c647dc1a264a5f35953fa9024be64598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59859691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60689856f7086e38a9b4118cb37fc7b3c39cf69cfd2e4ab4f4b670b977cfe57`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:45 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:45 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:28:45 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b6ca388b2fd66e2785060fa35259ae375e7657091ae62c7183a581cc3f0158`  
		Last Modified: Thu, 23 Jul 2026 22:28:54 GMT  
		Size: 55.7 MB (55677831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:835c459af753753e194c018ee80c94c23c5346b7b65a7c4c7fbef01eae08c2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cc754358e54ede2dcb1571a124fb7bc87fd0f65f3a3bf15cf23b7659a069d3`

```dockerfile
```

-	Layers:
	-	`sha256:f687d26fcd6623b63fd9466caba7ae941da2d944189c26b6173e7cc020ad7ec0`  
		Last Modified: Thu, 23 Jul 2026 22:28:53 GMT  
		Size: 7.9 KB (7894 bytes)  
		MIME: application/vnd.in-toto+json
