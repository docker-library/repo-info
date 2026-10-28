## `azul-zulu:8-jre-debian13`

```console
$ docker pull azul-zulu@sha256:9bb583322d7e4e8cd7fb776e01549a4ffc9c408e2e09079efe54b6f8be617dcb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:53e35ef35d8a2ea04051f553df512ef7bba02fc29ec95d05b0e1ffbebad70592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79159429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550c78f5a7bf8fb890d53082b5c25d4c913931344b3be7892e3b00c041fe64a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:34:57 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:34:57 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:34:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:34:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10578cef8781b9923f69a49f3a5b51d951bf21bd737329be061409814f9e802d`  
		Last Modified: Wed, 28 Oct 2026 01:35:06 GMT  
		Size: 49.3 MB (49304193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4a43cbf35f85db0260269a4f276835ba7b3ae71f8740764f7bd2a2fc27e0bb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497932bd2d02a61e557389496d9408d592210b711f1b01008073b0f2659cb55c`

```dockerfile
```

-	Layers:
	-	`sha256:3db781e2b2f3596d260aa85f1ccfbc69a4fb4f07dd710afcc2ff3becf07e66b6`  
		Last Modified: Wed, 28 Oct 2026 01:35:05 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:68121d2fedb2f43d6e535ad8302826a34515990b4d80f658f06b02413a183699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79755215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac36d1a2352a9ec52be00549b69d76df46619d9b5aa46a5a200361eea462e028`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:38:55 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:38:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:38:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c64f23afcd5282bcaf19b1f428829231f80d22bdca4a030726bce120798a2d`  
		Last Modified: Wed, 28 Oct 2026 01:39:04 GMT  
		Size: 49.5 MB (49541719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:09349fe57a6a875f1e2e41c4452eda927e8e1aa8bb28e8d956b6d6d2db102e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d19e7950e5916a36d73b826922936642fecb137bb8effafa79c4fc566517843`

```dockerfile
```

-	Layers:
	-	`sha256:9a7ec1369e8adf3af13f76627953aa52aa15a0df6a027e1744f26880d3b2757f`  
		Last Modified: Wed, 28 Oct 2026 01:39:02 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
