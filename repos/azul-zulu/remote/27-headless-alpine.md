## `azul-zulu:27-headless-alpine`

```console
$ docker pull azul-zulu@sha256:ae2226261daa793b8259db7396b4de346739500072e044b98121a0d688e4c354
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a11faa9d5c777cdffb2f8a1783b6c94ca15b3d502b0f375534f21336b9ec7b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183075675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b669150547301574d5031159be044b119273d4c1837aae1edf812a4b8b129ca5`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:03:04 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:04 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27.0.1-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:03:04 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:03:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea9fe28a6e3e7226d4a392dac7ddd96a3fb1d3ca1a9b98f86d88436f83f5e40`  
		Last Modified: Fri, 23 Oct 2026 20:03:22 GMT  
		Size: 179.2 MB (179223448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2330d9e199217b096daae51ac31f245bdfce188ccd516dc7b2ddd4537a8cca8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4de371aac38942f449a883e7afa47f6d59c5596b64a1e3d27b4923e23f57aa`

```dockerfile
```

-	Layers:
	-	`sha256:000a8ba9e05bff6b4db9181a486fd257d568aacd6a792ba78351510cfd3ef2c5`  
		Last Modified: Fri, 23 Oct 2026 20:03:17 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4b60d0d36fcdd7be2c4dbe4e3cd479984df90d4da1fd886137fb6af7c9a156a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180996282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a72e213a4e4184f8a18974595cb180d3fcaacb05928a4d5e4604bb380b5592`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 20:05:15 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:05:15 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:05:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jdk-headless=27.0.1-r3;      java -version # buildkit
# Fri, 23 Oct 2026 20:05:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:05:15 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:05:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d45fd72bbed99082a11b3f274e7586adbc3bf792ac692f5b3dee542aa6b6cb`  
		Last Modified: Fri, 23 Oct 2026 20:05:33 GMT  
		Size: 176.8 MB (176806788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c95afaa851d4924a06fa473f23446199909a0219aa69b223c4a31851f52d26da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa236e9bf37cc0b16dbd47bb1b08f62fd95096dfaaa97c15cb348cf602d4d00e`

```dockerfile
```

-	Layers:
	-	`sha256:502b1dd862db5ff5b64ce4af2808447141649b6d6325a3ea9536ebc6b33aade4`  
		Last Modified: Fri, 23 Oct 2026 20:05:30 GMT  
		Size: 7.7 KB (7670 bytes)  
		MIME: application/vnd.in-toto+json
