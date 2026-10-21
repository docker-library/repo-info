## `azul-zulu:26-jre-alpine`

```console
$ docker pull azul-zulu@sha256:c4ce93da717719fc8ff0262f1ecc68e4c8c1c9edfa2f1842a972d046f33f0f6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4979c0224ea0537e3a0f72b94221892e8c63d5fb3b185be15c16c0672eb19459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91768995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2212d7f930638ffd23c206a4e5f16a4528896136f540d53fa335d77ea733e283`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:18:44 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:18:44 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:18:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:18:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 21 Oct 2026 21:18:44 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0061e3243abe8c769bdc595cf64525e1fbfd15aa40336b457e46092bbf7647c3`  
		Last Modified: Wed, 21 Oct 2026 21:18:58 GMT  
		Size: 87.9 MB (87916768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1d460ba8b65588d09106892fdefb78e1e47a1ac034a04e297e58ca8563b89729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 KB (7490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dd6e33e4fa402541e5ba53d006b3e3226f9cb34a7b0cc7aed514912fd48cc7`

```dockerfile
```

-	Layers:
	-	`sha256:61688bcae1e9d8a41ba61147b55e1493813aee14af18afe473a9794e3893e6a3`  
		Last Modified: Wed, 21 Oct 2026 21:18:55 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:038232270c1f6e2d630715083a70c569640eaa833db72914dc68393d8fa49a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90915369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af258003b7582377cfc06cef69041132a5b04e5dfd0a6df7bc9f893f93a758f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:25 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:25 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu26-jre=26.0.2.1-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 21 Oct 2026 21:19:25 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d283ccc92cd3b7ce7f94af75b48aa3700691cc3fa9d4d6face0b12322ba69eb`  
		Last Modified: Wed, 21 Oct 2026 21:19:38 GMT  
		Size: 86.7 MB (86725875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:67a796614a9fd11a6ef89e2f7493d3a3682f4eb06d6d8d632a9da5fe46681bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63b8dae9e90141e1ff512e897338e26ecbbcb336b88592aeed4539321c3235d`

```dockerfile
```

-	Layers:
	-	`sha256:d68466770755307aba99781a06639bf82d73303dfc2bae0825f6b09ee4131ab0`  
		Last Modified: Wed, 21 Oct 2026 21:19:36 GMT  
		Size: 7.6 KB (7582 bytes)  
		MIME: application/vnd.in-toto+json
