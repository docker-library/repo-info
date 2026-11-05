## `azul-zulu:26-jdk-alpine`

```console
$ docker pull azul-zulu@sha256:bd08960c1c4bf40de53c223c97adfc21eaaaa283f0f9212a0e7907c8c20a9e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:519b6db6f3681b5bd52e59fe58ca83013a61395a58c6bab136d15cfcbb935e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187957801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b157987da1e89ec7036570d0314bde0f1ad66e5bc9e404be738bd055a80d1ab`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:16:22 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:16:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Thu, 05 Nov 2026 19:16:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 19:16:22 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:16:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5590761a792cfbcf4f311d57e03bf7e8d55b6e99877b4aecafe8e0b246cdab13`  
		Last Modified: Thu, 05 Nov 2026 19:16:40 GMT  
		Size: 184.1 MB (184105212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d656fc35b11afb3768f9ec61d23edba74db9cc694d1a8ece5d391fa914ce0add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f282ec217c1d640f75701cc750276e3bcd323fa37dcf8c805f316ae0bc7df81`

```dockerfile
```

-	Layers:
	-	`sha256:8bec0de0ed41dedf5ff9e3e80e7629b28bf633247fa77fa52bcb882c7bed8569`  
		Last Modified: Thu, 05 Nov 2026 19:16:36 GMT  
		Size: 7.8 KB (7825 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fd3b2bbf1b41b6e953cad71c1ad9c7ce752b63603b7bdf9641fec75b3ef4d0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185833980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae8296022270f0780caf2c22c4908dcf1675977213c898f66fbdc4e2d3243c8`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:11 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 19:12:11 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jdk=26.0.2.1-r1;      java -version # buildkit
# Thu, 05 Nov 2026 19:12:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 19:12:11 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:12:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea50a8197fb53cfcf3df0041ce9ce9fc3585dbb8d8bb027a978c4d22a0158da`  
		Last Modified: Thu, 05 Nov 2026 19:12:31 GMT  
		Size: 181.6 MB (181643759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e81805354ef519e920df20f85e4fa6147284c21d3079b8bc8df6b5564ed7aaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b7ffb17156b9c4ec7b68dfacce30de6902725dde0a29077429adb20c0c6129`

```dockerfile
```

-	Layers:
	-	`sha256:9f805e8e79403863bd4299f19ff3e227e69a782691c6757da91837354986ffb0`  
		Last Modified: Thu, 05 Nov 2026 19:12:27 GMT  
		Size: 7.9 KB (7929 bytes)  
		MIME: application/vnd.in-toto+json
