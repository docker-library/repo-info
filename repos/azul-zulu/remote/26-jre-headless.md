## `azul-zulu:26-jre-headless`

```console
$ docker pull azul-zulu@sha256:a0d18076b71f8f5deda8fc3635dcd54881cabd59fe789c221ace80aa4c016997
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e7c39387c6616b8fb7890e2beceb2d61fdf1225afd5c5956b6a2e869fa5e4795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120023753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13ced5f5b98327f37ac88728c45f6a751dee467221ece78a7f6e715ee94390a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:14 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:14 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b523a1fc58202053ca763ed2f462e6af4fc0dcaccd1098744ce1c92944cbde8d`  
		Last Modified: Wed, 28 Oct 2026 01:39:28 GMT  
		Size: 90.2 MB (90168517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:181bdf5c08389a8c49928b0e83482fc6cb83b2c347498204ce50a5e90cb06337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7746867ee9bbb4f28e3fe58d5f75b7b2d2094a8dfc66b0a4f5aa6db59f70c`

```dockerfile
```

-	Layers:
	-	`sha256:eb52404e49175cfb497685b6a3b3d4fe59275d0ffed68bb6d6adb9056ef351ae`  
		Last Modified: Wed, 28 Oct 2026 01:39:26 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2276d82e3ed1e80e93166f0b6e49d8f43db6cf62964aa4b428f7442fa7c55b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120322324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b3a23724f2ceff75d81e38fae3988e99f838d80d60a8bfd9341ee1549c45b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:54 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:42:54 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:42:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679b1595125cc5bb18ad784748c9152973771f21afad5889c082b955a45b4f7e`  
		Last Modified: Wed, 28 Oct 2026 01:43:09 GMT  
		Size: 90.1 MB (90108828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:03292e1eda62b92a6776b038111570a44d3b3f5c3276b6c2bb1c8c2e51d32dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be360d523ce369a6e762054e34c2c28e091f106b7918e88e91ff45cc89829112`

```dockerfile
```

-	Layers:
	-	`sha256:edd9b0baddfb5103cb7a0f9d36df9ce48c94fa96c1f394cc9d06932bf9433a49`  
		Last Modified: Wed, 28 Oct 2026 01:43:06 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json
