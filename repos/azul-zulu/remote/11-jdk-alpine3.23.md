## `azul-zulu:11-jdk-alpine3.23`

```console
$ docker pull azul-zulu@sha256:3db947cb4bd331907965727761bf6c1824ba629423ade3f52e8dd256c5146607
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a3c486d0f0867c02070b4124b1f73d2943f1f512c03510fbb731892064f704f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147030122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b908bab065294210ae8b151d7a9974b64208e5762fa01cedc33e93fea156d`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:00:23 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.33-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:23 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:00:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d380f39f4a6d929b185b6e33cfc4cb3db19bc6c10a2b599bbd6bca813bcef357`  
		Last Modified: Fri, 23 Oct 2026 20:00:38 GMT  
		Size: 143.2 MB (143177895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ed143f3fb1f4174216692607d4a82204efdc4d5cbb52839633adb910c0cdf412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e069fda403bc962bdbe725ace76ed909e77bd907ec2a7d77eaf725bae856a9`

```dockerfile
```

-	Layers:
	-	`sha256:b189a10887deb662f81ce9c3bb2e21a991473c4fa9412d98f057ac4ff33a4125`  
		Last Modified: Fri, 23 Oct 2026 20:00:34 GMT  
		Size: 7.8 KB (7822 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0cc63f8431edcfe91a244fbc1c6a4b8d928ffdf450f6738d4cd216582825262e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145610958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9ee4eaa071537c7c90cc7e7334413bd48c37ac0f714577130229f1080b63cd`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:00 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu11-jdk=11.0.32.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 21:18:00 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:18:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab1b72afad12806ca2700a04568aa3bf61f6d4d13f410dff7cf58c595f0e6ac`  
		Last Modified: Wed, 21 Oct 2026 21:18:14 GMT  
		Size: 141.4 MB (141421464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:84b0ecfb62bd638f6d4e647a8fcca25c58fb28f8fbe84e138551109910631887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f8b7dc4ba3a2346d3e9995f6e6e040bcd70df516015743bbbd9a6e95562824`

```dockerfile
```

-	Layers:
	-	`sha256:b00c8353a0796c4d14932d9e2b51d692af4430226c26f1db6060ad50161a20eb`  
		Last Modified: Wed, 21 Oct 2026 21:18:11 GMT  
		Size: 7.9 KB (7936 bytes)  
		MIME: application/vnd.in-toto+json
