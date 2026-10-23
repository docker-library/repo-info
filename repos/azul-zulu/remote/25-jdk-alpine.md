## `azul-zulu:25-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:bd872c0d2113e0344ac1c47498d29b8ba4e016c48b4cf0967c358e7f34237b3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:651be8d0e5201fc9d52ef672dbefc50b8a45469778f2205faa00cb1e0be61e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (184033210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7cc52ca4d9ad9c68122868bdf4c59c6859e0b4912b5c3ac1fca899c58a8e9ce`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:02:15 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:15 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:02:15 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:02:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a091dd05c75db57cf21c425837759d91bc04273f401f1a4cee32c26e54fed82`  
		Last Modified: Fri, 23 Oct 2026 20:02:33 GMT  
		Size: 180.2 MB (180180983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b90c91ad1a33f7db94613ad27bd8e031b0e37b27fac6768779d4ae909fa6c9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18eb2664da4f3d34f96ed17ff2f8f707164d7aa7d6c21eeca3f7003dceeb0950`

```dockerfile
```

-	Layers:
	-	`sha256:dc563aceeb2d00f67211da1e8704bb050caf1d51caa81373bcb471185be8ccdd`  
		Last Modified: Fri, 23 Oct 2026 20:02:29 GMT  
		Size: 7.8 KB (7819 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:38cd032adfb93eea99ea750e5c1672d009eaeb557f3281815a871c6d440870e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181944686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e358b429aea6da2d8fd5dd51c74dee422619ee40f7412c666b87725d244ade7`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:04:18 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:04:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:04:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk=25.0.5-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:04:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:04:18 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:04:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a51a3b33b008c7037a28d1d0159228843a4213e82ee27cdc9444d5d78fc2412`  
		Last Modified: Fri, 23 Oct 2026 20:04:37 GMT  
		Size: 177.8 MB (177755192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0d532fbd3180ad60bd0da8f43883015d00c0fc0fa449d791c2ff6ea7629a3d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587678d8819aded69b6a70e064457e4636938055af32185c32fc20ca54fa4a17`

```dockerfile
```

-	Layers:
	-	`sha256:fdd9937bd394ac614b8fbd8bef6d6db6831eab4f03c655de382e29afc342a8ac`  
		Last Modified: Fri, 23 Oct 2026 20:04:34 GMT  
		Size: 7.9 KB (7923 bytes)  
		MIME: application/vnd.in-toto+json
