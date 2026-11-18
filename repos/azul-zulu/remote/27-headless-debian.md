## `azul-zulu:27-headless-debian`

```console
$ docker pull azul-zulu@sha256:725e0e0e13253114a7188786510ea2f63f6c39c6cea8833a98cbfeb3d975ccd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:715c8471a7551d1b5069f6a64e2e9966abed9fd78442bf70d83be83eebf60bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213277825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b428bab1324df9ec81fe167fefca43436e9ae17381e0742e1a8b36c9153fbb8`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:44:30 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:44:30 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:44:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:44:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:44:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729dc00050c83e1dac67008fe1a13cc5772cf93320b40287fa20fbe4cc7662de`  
		Last Modified: Wed, 18 Nov 2026 02:44:48 GMT  
		Size: 183.4 MB (183421693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7b9ee8972f7c606c436ba86f56fa61b597e76df23cf2d21fba23f17c932e1798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00da775e8333bbd45202d85fd7ad09f79b8d907aab88c0ecb79621a6d414dcc4`

```dockerfile
```

-	Layers:
	-	`sha256:7a3a484432a4e17f5f3a82bc3b11559cb220180ce901e43b4e2400612236e548`  
		Last Modified: Wed, 18 Nov 2026 02:44:44 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1fb65b8286b96dbd7133e295f7c15c86d7f233121f86a4e2ce20ab5dbe2fb4eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213325232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab33817d5de92f3fa831a4cab2c5685b4daffbceec8a8d785e58e23748ceabe`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:44:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:44:32 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:44:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:44:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:44:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aea7b9dc18618567ec2d788691dc61c9fd13757ec44585ba3ae9f02e586ba96`  
		Last Modified: Wed, 18 Nov 2026 02:44:50 GMT  
		Size: 183.1 MB (183111195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:98bd236774f04edf81bb49550955127d257319da9701fde813ff72a53b9e1ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590fe2e27e7c5e17497b517b2982a49df4ec36fef0904b3996d6662f4d5d8c08`

```dockerfile
```

-	Layers:
	-	`sha256:996c6dc5e9ec9d852e760e6d396b6322062fbbdd75885b2bf2e04781cc96f576`  
		Last Modified: Wed, 18 Nov 2026 02:44:46 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
