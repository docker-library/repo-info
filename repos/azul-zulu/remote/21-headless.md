## `azul-zulu:21-headless`

```console
$ docker pull azul-zulu@sha256:1bdde604c324fbbabb26d15bd43c72d0348097e37734bc51469aba64d77d60f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5f59e35f9ba139d00960318095032907c141435a0f5815f7b182dc09576bf2b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192540847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd52cc90fc658646aa46d0a1456e9dd5558e57b2afba77af007832fdbe3b471`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:43:18 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:43:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:43:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:43:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 05 Aug 2026 00:43:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eba9df2cf829b0422e5bfe85107bf17f6bea34c8962b2bee5a4cb4a73ba9e6`  
		Last Modified: Wed, 05 Aug 2026 00:43:33 GMT  
		Size: 162.8 MB (162760082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fc59c0c0d8060fd49d96ee6948a45e827269c1ce7d98e3b574d0726c94f7764b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd2a954bfeffb20abbb8c5f5787645930f6feea9bbd1b4019403589fac2366d`

```dockerfile
```

-	Layers:
	-	`sha256:a413c46fc2d3e29fe64acf6de6a643c76922302e4141125b602dc86543419069`  
		Last Modified: Wed, 05 Aug 2026 00:43:30 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9b511b54ceb59f9f7c5f3a4df334a3acb30df28beb932d7c55a89f64d5ca7170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.2 MB (192189548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a8e61431d75e51dba1cc3d199d42f1f28b3d618ff18000b7f08c9d102fce83`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:56 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:45:56 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:45:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:45:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 05 Aug 2026 00:45:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77877ad81bbd0f40032d681bee62a0cf2027e643529cdaf236b89c292b4e85fd`  
		Last Modified: Wed, 05 Aug 2026 00:46:14 GMT  
		Size: 162.0 MB (162045939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6d4e337f8eedd2615b8b7d282724849e92b804c8bc9f9a207b73209aa19c93f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c7bcc6a12a313f392fc535f49c6cda4ecae61264d0f89326aa292805569b7b`

```dockerfile
```

-	Layers:
	-	`sha256:ac543d6461a99622e4c3e03e078b413e932a7aff70c0d4f577d39ac45d0a0387`  
		Last Modified: Wed, 05 Aug 2026 00:46:10 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
