## `azul-zulu:11-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:d92f4e6a76d5c7585e9cd6efac17e96bd712854b68bf01d8221d6b96f89e6399
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d2b9043c8d1d95a9a05904dcecf4be31a60eb25703835028e59488061e2505d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177381230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f94cee5e966037337e0279a14ddd340bade52c83629022e7957c5b1fbc6c00`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:35:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c6ff399c5d206de79b4a06031532e712adac1d0478ee8ce5c2088e4d6ee8ed`  
		Last Modified: Wed, 19 Aug 2026 17:35:29 GMT  
		Size: 147.6 MB (147600465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:181eb93d8f9c7c03fc65e85412b3ccda99736098eb13cee2edf838f53675a989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b222bd31ac0b11aba9633d6c96eb7a56182730a6de4b2be7b3ba9d3d6bde067`

```dockerfile
```

-	Layers:
	-	`sha256:ce3d071534f552a6c0f66307f1d07a2321564c5de55944ba3955736148a9f250`  
		Last Modified: Wed, 19 Aug 2026 17:35:26 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6af4577b7d7e1ce6b60129b0abb226e4d72f6f5721f5c45164c651778108dc0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177423363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60aaa234daf190b475e2325711af10c4175811c90de2df8bc8dc0a0ad4237924`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:35:16 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:16 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:35:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:35:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d42e37f580a16e3729f1435e085b1a29b0084529ae9166ba34872decebab0d3`  
		Last Modified: Wed, 19 Aug 2026 17:35:31 GMT  
		Size: 147.3 MB (147279754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:317783efb448afab2e43899a64bd6a6ee7fbfe68c33c901cd83b12aa3a63c65f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418b2439991a885c99b680b117a87f5ec4585d7f9d4129dab8034496d667461c`

```dockerfile
```

-	Layers:
	-	`sha256:510ff019f82c675e897ff2fdd19d3284624498c1fc11e40ad199dd724dcb6fe6`  
		Last Modified: Wed, 19 Aug 2026 17:35:28 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
