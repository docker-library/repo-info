## `azul-zulu:17-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:bd1431da571a3eef35e8ecd60ab62eb1f2f62ce0517aba1e84c52c1e507330a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:beaf1a0267f19896e1de63c8f53ea6ab27b5924f50933a3b91be89a9391f1912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151121472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2882df306164d126aa3ebe79427eda53e12ee8e210773884d2581533b5f15c47`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:23 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:38:23 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:38:23 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae01b10971dc1c585f17f87eb4a5d002a4d04528f06ec3d59afd4888891be76`  
		Last Modified: Thu, 17 Sep 2026 21:38:39 GMT  
		Size: 147.3 MB (147272965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1dcbb7cb43b9352e82879598c35feb98cf0ecc45a040c2e73bb917d6d6329395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d732c5db59c9502ca89e310898c765a5c36d71e3c9258acb0c3e2125a62b47`

```dockerfile
```

-	Layers:
	-	`sha256:3de0007361a93c558fb3adfd1e75d28c810268671fa90cf54caf4ea7be97c38a`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 7.8 KB (7832 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fd9609a0c7c9e86e53cd5df9281afcf7c68a5c3974a753e3ffea4d296d090104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149910990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5bcda915a5f031946b17e702974c7e128cf542a9ed4fe926fd4f7785a2953a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:39:28 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 17 Sep 2026 21:39:28 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:39:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jdk=17.0.20.1-r1;      java -version # buildkit
# Thu, 17 Sep 2026 21:39:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 17 Sep 2026 21:39:28 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:39:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ce263c9dfc884f9ae79105512952b22807d414d882e70cdee8ef386d574cb4`  
		Last Modified: Thu, 17 Sep 2026 21:39:44 GMT  
		Size: 145.7 MB (145724934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e09df05317f36f9e38d4963d7041d4568609ea90635e7da76f853ba560677520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa557f848b1d058c5cccc8a4a600496c583a02d079318ff8a65f4069359b0dc0`

```dockerfile
```

-	Layers:
	-	`sha256:30c0c8dcc8bda91828449c294bfe87d60b0cfdb96add534c5da0e9d355e564e5`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
