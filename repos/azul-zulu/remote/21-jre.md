## `azul-zulu:21-jre`

```console
$ docker pull azul-zulu@sha256:0794eb53169012d10bbfdefbf8d96c1bfe67c89535ec6a23322869500c6d0010
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c1750222f9202ce52b6d4b313de1c81705e18825930224e6364e765ca207830e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106215855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d0d58874091b070916b05742cae6962971c85bcec772964bde0bdb6faa523d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:34 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:34 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1ebd715ec25f4eb6835cd33f8dd431068eaf931f895ea5c0f00e1379a9e7f6`  
		Last Modified: Wed, 19 Aug 2026 17:36:47 GMT  
		Size: 76.4 MB (76435090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:04b2accaf8065f3475d94a867aefe98b7f7d5bb456419a0a682ad74afb913d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1347bc1713aa676ffd0e21014229757034933a9957f89e09413f560db0a2f817`

```dockerfile
```

-	Layers:
	-	`sha256:be03f6829d1b117be5059c1c9c4ae665db13f3f3911a6f774c0a4a365e24a64b`  
		Last Modified: Wed, 19 Aug 2026 17:36:44 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cd5ae05276817fdd6c1f45d461d2bc9b4bdd03fba07d740bc213564b8e9340f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106218521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd56d112982cda248bfec6987db5470dd028232561233167fe1a066fe505e01`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:38 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:38 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b8ffc5cb3a08ac19668958c1a986f1e39b4e673122439bfb73e5151cf7403a`  
		Last Modified: Wed, 19 Aug 2026 17:36:51 GMT  
		Size: 76.1 MB (76074912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1fc17bd0ef9e0e01c3a3f109f9961762a4851b6e11d0847fd49106ba7cd7a6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab890502769589bb775b7c52de7a21141fedf88a5949ef1d38cb92d3600d0d1`

```dockerfile
```

-	Layers:
	-	`sha256:293e6ad2ac649bf99de5de25c4d76283402b8863d8fe95860acf3a094d3373bc`  
		Last Modified: Wed, 19 Aug 2026 17:36:49 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
