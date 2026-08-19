## `azul-zulu:11-headless`

```console
$ docker pull azul-zulu@sha256:1e41a0b9ae571b879ccbdaabe74b23f4bc69a4207f19e7ec833b0499757f319f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6aae8fa81544274eb19003a6a85b91d833d3b8b5056ce443e7cfb2c41393c4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174984357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4699e80a138dc23327ac6eb456a2aa7879cd1efc25642164ddd39d1f765ad1af`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:17 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:17 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:35:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868a517ddcb8944cc134ab0122577e15e90f772e75abef54bcbda90a38c9da18`  
		Last Modified: Wed, 19 Aug 2026 17:35:30 GMT  
		Size: 145.2 MB (145203592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2dab4891bc1cf158a0e8b03af20422e9be4def972b73b050006ffca56073e1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec2eeeed12ae9806b2ac9cf7c9484c8efe67a2073a59b7cb0d7dbda81f69ced`

```dockerfile
```

-	Layers:
	-	`sha256:4058f50af7b29f72ffe2215e429839441a219f601e793604fc1420ff5649b715`  
		Last Modified: Wed, 19 Aug 2026 17:35:27 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3cd8e87862dc6d81ef04b438cb03c3ffe939640418304297a6482ca83c81b330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175041188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81688bff1b51dcdb725e9fadebfc733a86401bb958ce34c4eca5ae10a1056b46`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:13 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:35:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce66e07cd578e09cebb5026003da473ed273f3666cb3b9c437a4d08ea5d3ac9a`  
		Last Modified: Wed, 19 Aug 2026 17:35:28 GMT  
		Size: 144.9 MB (144897579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1cec5f8ce0f71da0c1938626cfca9f6dc2706a792cf5c7f3dfc77718c6dab37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61838177ca7134a0f26ba076421fb91ec759a8921bad4d5057c412c3b435b53a`

```dockerfile
```

-	Layers:
	-	`sha256:1526441a31f9f320f6f29667844c875644e8f57686434c45705d4f27b12262aa`  
		Last Modified: Wed, 19 Aug 2026 17:35:24 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
