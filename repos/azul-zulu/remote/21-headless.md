## `azul-zulu:21-headless`

```console
$ docker pull azul-zulu@sha256:72ffa8565fe17efe39538d7f768d5d88d316b3975461299e99c886650bc17d10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0cde50426f1bbdfa3bf2440174d96a8858b2248ae0c52202379d6212c034124f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192603339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8b38fb2bd3ae4105749a3c988f5044dab400399fc32e40bb7dbca336e0b1a6`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:44:14 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:44:14 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:44:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:44:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 00:44:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c8e8fbf33dcfb11b8be43edad7dfc75103e4004cf5bbfb23283b0ef8b09992`  
		Last Modified: Wed, 21 Oct 2026 00:44:29 GMT  
		Size: 162.8 MB (162759760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4e299eb5fbf4c9d4149a20f7ceb869a4bc8a7e22a80f62c6f742e0a993137c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c68142eb472da8b6f769beac81cda32993d99e38e9ba180d4f731d938cd646`

```dockerfile
```

-	Layers:
	-	`sha256:bd32035ef5c4767ecfb391b698cdf04b7e1b10fb68e40fdfc8b53f8addc93c80`  
		Last Modified: Wed, 21 Oct 2026 00:44:26 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:989e10fe154175b7367b67f4d905db6991d72d594c88f47a018278839de7960d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192263761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c761391f03c43e4ed7a40a95ebf9ebd4f19c61f70d3424fbecea9f3d2d0fa4d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:47:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:47:52 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:47:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:47:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 00:47:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f22cb0c3011a608d62ff88f643235d31a49332573a329c8d33c3c1c2c30df82`  
		Last Modified: Wed, 21 Oct 2026 00:48:10 GMT  
		Size: 162.1 MB (162063283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:31cf499965dc5a892ae244926032858bb04bdf44ca947b5b5f5a00fdb97be7a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3497a08dbd6f516bef6939a1816cd86028135352a7423f98733df9e64a51036d`

```dockerfile
```

-	Layers:
	-	`sha256:5aa57bc93cd9b47445f5c66d5282d5aba91d54c87af19bea423a263d4262b38a`  
		Last Modified: Wed, 21 Oct 2026 00:48:06 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
