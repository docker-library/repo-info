## `azul-zulu:17-jre-alpine`

```console
$ docker pull azul-zulu@sha256:e867ceb6506c074edce4b30d5df284aacaae2a79fdaa68d41d14bd69acc1d6dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:aac8aee8302b45cf53abdea03d11676d68a96235b6eb3f5c0ad99219d3644a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70322940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a9f8616b1b28410f4799abf3e0258d1f0a4ed7b53742e1239681c7cc259558`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:38 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:15:38 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:15:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:15:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:15:38 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69814b28a036b91e88e104b4c424c4124514fdb1444178238a1a3e9bb0af232`  
		Last Modified: Thu, 05 Nov 2026 19:15:48 GMT  
		Size: 66.5 MB (66470351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f065beb6493cb249039cb4a24ab5fcb1b2b091f67522fe5db772aa7e4a5bdd59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341ee719dcbb0fa2a06cfdb90a75d69ddc067d892ed3069589ceaa4fba5572ee`

```dockerfile
```

-	Layers:
	-	`sha256:7edb6e42704ca799ebeb04e6b0c37bae2984b7e1a7d7abd32aa75f738ed1f439`  
		Last Modified: Thu, 05 Nov 2026 19:15:46 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a14748d56ad69c0166a380c1c0aff4ca78c6a399a129b80d13d78361a4b88023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70026064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cd29a77aae9670c89b254fcfaa71db7b3a32db53f29a3fdd8b7e7db5e36021`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:24 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:11:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu17-jre=17.0.21.0.3-r5;      java -version # buildkit
# Thu, 05 Nov 2026 19:11:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 19:11:24 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3ac91ad1fe80c912b68bdfa3ac28af97a7e33a3981e6c41e51fc198b37de18`  
		Last Modified: Thu, 05 Nov 2026 19:11:36 GMT  
		Size: 65.8 MB (65835843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:584c66c399e4489a219b8b093156f56c39903fac23c13707590ac237b792c55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec96e9a87082358d17fec3a76e87fd5763b5590514d918bb00d3e10ebed79cb8`

```dockerfile
```

-	Layers:
	-	`sha256:880db89cf3e0d3ac9c33029faaae608b90f3a5066ec72c201512632fcb9816ec`  
		Last Modified: Thu, 05 Nov 2026 19:11:34 GMT  
		Size: 7.6 KB (7594 bytes)  
		MIME: application/vnd.in-toto+json
