## `azul-zulu:26-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:0abbc19f14085baed4277e9d7a788569972dd0cd410c51648c05e13164c17402
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:12606b9a318b3074d03195914fec345bc13301acb21f651fe007d598bd00b1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119947349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f345b6842e2bb15b1648fbf58bcf632259157bf0f4e319552dddf23645339c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:55 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6017b4042a83bffa3d5dfdd1a8e6ea5e2b9f3b09e60250317c858101d13ce6d7`  
		Last Modified: Wed, 19 Aug 2026 17:38:08 GMT  
		Size: 90.2 MB (90166584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c33f1a84d11c02a5cb78586aaaa94c2abe4e84be7f72f6e8b5f2648a814ac94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6234eb9259669b1af2aad9c83c678f20bdcad707f005c4c4d32ae3245ee41eb4`

```dockerfile
```

-	Layers:
	-	`sha256:304239c585c03433f8186f9dd160228ffb50b849c26550cd8628b5734e4a96bf`  
		Last Modified: Wed, 19 Aug 2026 17:38:06 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b40bb4f5bb1a63d32daa30f85604618b9d898f466b24c809e9d2e8e1094f394f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120242653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8436f2c6b4d569592840f9edf929dc21b08c002de36ec779bdfac4e6f0758452`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:38:14 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:38:14 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:38:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:38:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c232b4739059de5a564f095d48e58571bf0c2127ef757facda7999805555e8`  
		Last Modified: Wed, 19 Aug 2026 17:38:28 GMT  
		Size: 90.1 MB (90099044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b98965e8cba382ebb38cbd9ed672298204c1959154911ac1d400097676bd83f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98281791907d3a2aea27ea9dfa794629e75bcad6c1ae0d3d5437e518e60a76b`

```dockerfile
```

-	Layers:
	-	`sha256:b123d852208060e3755bf0d44da2f3f11c7f5e1dd2c24469ff3bcccfd953d41d`  
		Last Modified: Wed, 19 Aug 2026 17:38:26 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
