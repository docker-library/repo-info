## `azul-zulu:8-jre-headless`

```console
$ docker pull azul-zulu@sha256:d202cfbb8151d6c666c1b0d8d8c512227adeb8c0f8d049f96536dde8f60b0dee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:753ac34d6c48aa1f466d8ce4fb506ce6c9f80929571247af276db2081637177d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76960431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b3d4a380b893c0037148aafdab1eca6f18386055e1b2ff23889de930f4ab09`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:40:58 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:40:58 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:40:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36fdb9356a0b58299108189897f21f1d2a21c09bedaa5da13852897b55f3b68`  
		Last Modified: Wed, 05 Aug 2026 00:41:06 GMT  
		Size: 47.2 MB (47179666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e25b86d6cb53b84e1417ff980ea78296e5eea3cc0803f2ac0bbfc636ff0cef55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce05c0ff6b9dd67aaccfaf35e42ea775342fa5beb2e635d481030511e2c63bbd`

```dockerfile
```

-	Layers:
	-	`sha256:7b46e661e7a0f363311e5e166f7e8ace7ebffde5afcaea9bcad2f1c1c4aa7851`  
		Last Modified: Wed, 05 Aug 2026 00:41:04 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3e9d5f2c97e6488ab9b4e49dd4b1602111541c91bcb4fb024dcce2ded1d9d77b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77551135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7a46bc374fd392a44409403b740c2bb0580c467283eeaee0abe8e3755dbe7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:43:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:43:46 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:43:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:43:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d73bdd4962d676cb90045d4001b693fcbe02c07bb67c42e31d4dcfddb354b0`  
		Last Modified: Wed, 05 Aug 2026 00:43:54 GMT  
		Size: 47.4 MB (47407526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:852cc0401ce543fd53b5b16a323857471d6b068b287600ddc583c9a7739f47ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af49909827a615aaa04a22a990fa9edae196a0df804e50e85aaf26428f1b20e9`

```dockerfile
```

-	Layers:
	-	`sha256:58ab38bc6d626011245f72342a88dd8937e1f7d61f857a44f6094db3b5e3a3f6`  
		Last Modified: Wed, 05 Aug 2026 00:43:52 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
