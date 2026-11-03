## `azul-zulu:25-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:3d7fbfa460e3ad9ff4b8ff17d48ad349c40f746af77cb5fd7452bcc8cbd80592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8b2e04239c9046ddce29c9d277f8ad9ce1818cc12ea2bf7f93e111bdaf4c28c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (184031663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e72def17ef81395ddbbe25ffb8aa52912137d718cb074fe0206852bc7044154`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:09:26 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:26 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:09:26 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:09:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac586d6d7efddd5444a8d2bb1a74eb49d5bada2f8c2703a270fc64dbf092031`  
		Last Modified: Tue, 03 Nov 2026 00:09:46 GMT  
		Size: 180.2 MB (180179436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:750b7fe3c7a7d58045976213ef2d5439a760f9aa89501badc5ffd5608448d3b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1dbf7654605ab59c82bf155c7aadfb60b819ff1c455a5f2690cd3bfbbbfeca`

```dockerfile
```

-	Layers:
	-	`sha256:09068b5be9f6072cc3e1402961b496de5b223f4b826b7648212ffe00ce627756`  
		Last Modified: Tue, 03 Nov 2026 00:09:41 GMT  
		Size: 7.8 KB (7834 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:58d342ac211e6f73461d1cf560ac068a24926a329ee79636b639f4198ed47240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181941999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1d62bf9a0edf252f23d1edec75bdc69bd6c2f555dbe8c7c49c46a9aef61678`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:09:38 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:38 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5.0.3-r5;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:09:38 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:09:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2180da73680a5fedc8b7f7edd9bb30a426a5758ce8b44936412c8935718acf`  
		Last Modified: Tue, 03 Nov 2026 00:09:56 GMT  
		Size: 177.8 MB (177752505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2c13cce27691467d086fba449d7194ba2b395297b24ab207bc553fcc16b2f712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c21482f801217aabd2476f1a1eb422473b972361c147d3f03f3fe4f991a53cc`

```dockerfile
```

-	Layers:
	-	`sha256:8b4fdd74b37cc28ffe9c597551c3e350da74642d321811c95deb36ec93fbd3e7`  
		Last Modified: Tue, 03 Nov 2026 00:09:53 GMT  
		Size: 7.9 KB (7939 bytes)  
		MIME: application/vnd.in-toto+json
