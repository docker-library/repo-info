## `azul-zulu:25-headless-debian13`

```console
$ docker pull azul-zulu@sha256:e2f5268106c7b08b26d7b35a332166ba7d42417c48d4f7247615e35a2e454a7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:781c8e9f600127ed90a967a85daafb02e32fdcea3fb639030f21af4e438b982e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211643374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b1d8aef9af1055ba1b6f3f413f411e4d361823d3f44ed6ced8862fa0ff7cb5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:16 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:16 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:37:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597e7e20dab280353796b1253cb67ce8006f6bd382be5541342d591816741740`  
		Last Modified: Wed, 19 Aug 2026 17:37:34 GMT  
		Size: 181.9 MB (181862609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:950a57251e3f97506d31d6cf484b1482e416103bfeec6186f7221e5f3df95d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2828d368907aa9bb64e2524427acefb386a9fc17bbed2df45442dd80d8f61002`

```dockerfile
```

-	Layers:
	-	`sha256:3eb9117acf56f8e9cb0ccdf928c15c33aaa2defd9d90381454af31ec6c5bfe90`  
		Last Modified: Wed, 19 Aug 2026 17:37:30 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:00f6d8b2afe7974a63c3beacc31618122a67297fd39f3a02290d5c139c7eca35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211125166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe822d3a7d3d4e8187013342412d6db8a3b1e49f3db7cde3ad4c418e6e02d69`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:28 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:37:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1412381284e2395662fc22ae8f218fcd60b9b2e459c30a70eb4ed049825ff5`  
		Last Modified: Wed, 19 Aug 2026 17:37:48 GMT  
		Size: 181.0 MB (180981557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6a1eed0ece10c9a912c59fc29c10f16b175653bf3a900baaa294649384672624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfc019a17e98fe2e13ececdb67fcc9817c89fc2166f22d6dd5a52f5b9c46cf1`

```dockerfile
```

-	Layers:
	-	`sha256:b6e6b5f59b8f91596a5fcd3dacbb9e2927236f9b0234b7da9622b888e4ab23da`  
		Last Modified: Wed, 19 Aug 2026 17:37:43 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
