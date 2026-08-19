## `azul-zulu:11-jre-headless`

```console
$ docker pull azul-zulu@sha256:181df181fcba9f7b0d49f4c3f4aa0e68f11595dc856a9974db94480d864321a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5f8b52490d661b78f5d3869762ead967ad5a979bcf2aba30edd64d53c16429f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94403285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa31077f6b44736e262b83792a83c529d02b8a3b5e64ae44721dc44df542128`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:17 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:17 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f41f08d7e142973b1b12d54dfef4df002bee3bdc80e451e829bad8eedf6f525`  
		Last Modified: Wed, 19 Aug 2026 17:35:27 GMT  
		Size: 64.6 MB (64622520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:60944762a2dd4cfbab40bc22bc932be051f6e72bb01a9d9dc89b7f155ef3007e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b5743f2e07f7f63e7d3eefced3538554a05874d2339a62f24633bae884464d`

```dockerfile
```

-	Layers:
	-	`sha256:b5d4d1604ff7125f2b946f4f904e39dea634e25e35e8274b3584531c2deda90a`  
		Last Modified: Wed, 19 Aug 2026 17:35:25 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b4c7eb22a6b6daade4522d8d148d8215d1c5f356476321203204dd325e1c575c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94597137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ad6a0081a3b9271bed7cfa040cfecbfa86b24ac8eb8cca53ad078ad0bd35a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7b3faf562800ee0b24376a591382f0a69129922d66254ca6515fcddd78f9ce`  
		Last Modified: Wed, 19 Aug 2026 17:35:26 GMT  
		Size: 64.5 MB (64453528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:affd9819fd39e3b6311d71c4534eb0b2591243531b8819ede3c4169fd0e488b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22571ded80359cba7763c68cade5fb98b219dcee99ecfe205ac3627e56bd944f`

```dockerfile
```

-	Layers:
	-	`sha256:a35d8235a9292bde00e4c8ced89315d7c48959cc2f2e7796c21f5a45505982e3`  
		Last Modified: Wed, 19 Aug 2026 17:35:24 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
