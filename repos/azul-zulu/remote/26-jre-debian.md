## `azul-zulu:26-jre-debian`

```console
$ docker pull azul-zulu@sha256:02cf6844fc032e97905d8e30c6b1f2efae0f4d5bf5e5c650f7ce5a9c56fb10af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0f21a8e731da6a46d2e97ba48933abc19a23264b012e717e3c98a66b2dfd17e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122022352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c659da064175d4e1107381fe2639ddd16d9f86e096c98839770f6b0637306be`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:29 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:29 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09bbf35ad6bc6e84cd792061e9063fd80f02b5439a405f99161248ef8024f43`  
		Last Modified: Wed, 21 Oct 2026 00:45:42 GMT  
		Size: 92.2 MB (92178773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0d2d902ba32785b0319a723a7c3211df7d3061081d1ebe8dc2b1c5b937305394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:543c065537433d9850c62f339140583e5c12c6e0fc453a22db91d908bb99b920`

```dockerfile
```

-	Layers:
	-	`sha256:185f35404881a67faf066a28a5612d4d862a9b66e76e588762147d2f3e7b4239`  
		Last Modified: Wed, 21 Oct 2026 00:45:40 GMT  
		Size: 9.2 KB (9196 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9316e32f7ac607ea223b76b5b598e9d18c9266c39a4919493151ec78d1bb17a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122299863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fdc8d71b6b31c1ba0f1fbcb1132ff0cc7ad97051173b2e1e44add31f9aa644`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:49:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:49:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:49:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc3ace9b84b0bc16c95e74b00c5e80dd0fcfd471f5fad2c522bc9bc4f99e9cf`  
		Last Modified: Wed, 21 Oct 2026 00:49:17 GMT  
		Size: 92.1 MB (92099385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1cd95d110df655d9bdfdad3b987845fd8bea80d0281d1ffd5c30e20a8a43d6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff999312836854fb2509f6f1b4ee8bb3909ba6dab3f8ee97836a47c0f5170339`

```dockerfile
```

-	Layers:
	-	`sha256:a3c1ef844ae67cf8717b22f371bd15a0e4ab08c6cc8b022dcc16b12444f0948c`  
		Last Modified: Wed, 21 Oct 2026 00:49:14 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
