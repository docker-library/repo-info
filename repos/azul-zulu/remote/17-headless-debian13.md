## `azul-zulu:17-headless-debian13`

```console
$ docker pull azul-zulu@sha256:2e08584fd990d58b11844e9e7367f95e3e5f8c6902fddf7179872a1e14056438
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:372e87aef8d7ccb53d781b41cb40279fc8d63b0c6878d2e98c22fb2a327b1261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179594865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c59cc6097b12f8a98885a15abe3d787375a983eba8f8cc8f67ef54d345aaaf36`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:08:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:09 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:08:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a05b5b84bb04212f1ce403c3cd0ac853aa9063142ffc965a17ce955cc14e07b`  
		Last Modified: Tue, 03 Nov 2026 00:08:24 GMT  
		Size: 149.7 MB (149739629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cf4e60071d830f28a91a3e5f442e32ddd32329de5efb4118f5a238e1a7bbdea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adc9b1a44a3958eebac98da38fc7df157a55ce081a1d060ad12ba7854ed4105`

```dockerfile
```

-	Layers:
	-	`sha256:441c6f44b6fd5ffa7191723fa7ea327b594673353080bec62581420455416489`  
		Last Modified: Tue, 03 Nov 2026 00:08:20 GMT  
		Size: 9.3 KB (9313 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7685b7a931242f04c2b251e4d7196de07273a6f314f3b4fe547e1a6ae7f373eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.0 MB (180025661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e22f05dc807407db2d62ff2f9e8d6dca7bb5f0474102d6d33bad3999efd150`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:08:44 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:44 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:08:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2afd4c925d8b1ecaa91d6d58024e73021c4ab56109dc9780451f20a32399dcc4`  
		Last Modified: Tue, 03 Nov 2026 00:09:00 GMT  
		Size: 149.8 MB (149812165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c5e6bb1cc969f05058772147c2e1e4bbcff464b769b536aa5fa280cc764d0a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e771f864989624660b9697b9bdbe34971ce29e02b03b3572ef033530253d7ef8`

```dockerfile
```

-	Layers:
	-	`sha256:52a83b47f5f50a6e2e2eac161caae397bdb8c909023691af9780b26c4cddb855`  
		Last Modified: Tue, 03 Nov 2026 00:08:57 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json
