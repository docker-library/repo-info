## `azul-zulu:27-headless-debian`

```console
$ docker pull azul-zulu@sha256:6af8a825b4cbfcaab439bae209e6edf86a733113f89c4b0d04cc746ff5fab3ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8672c90212b2da2251fa88b6dc2f94f3867911f6b6cc663abded5ed9a37146eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213250764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d296ed39af89aabe5151072fa0867927664071075406ebe7b390ea07dbda11bd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:10:58 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:58 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:10:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb47fdb990ef71cfbe6f16c47537c89d28c22980853b60a6958da539569542c`  
		Last Modified: Tue, 03 Nov 2026 00:11:15 GMT  
		Size: 183.4 MB (183395528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9d4fc1bec47a49175dfb7264a118b84856f95c10ad3158e5aa390f6baf9a1bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac15c0172519747c7eefd667049e6da275c86976075803657d04686553ac54b4`

```dockerfile
```

-	Layers:
	-	`sha256:a1f3ed1a587ca6ed738819006d90508a936cfbef9e5095a419201009d4a92b5a`  
		Last Modified: Tue, 03 Nov 2026 00:11:11 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e0feaf48d308d84007badca916d7ccbaed4d36f017413387b5fc858602936cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213304986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac15da510542ce4726d80cf01b69ad9d8514d44a352c0e6ffd41b47f9c3007e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:11:21 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:11:21 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:11:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:11:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:11:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653fdf478713ecd9815f78bee46a8e5ab5ce099214d883d606bf491fb4268f47`  
		Last Modified: Tue, 03 Nov 2026 00:11:41 GMT  
		Size: 183.1 MB (183091490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4b25f4b197c8a763a96f1244a27f7dbc221f0735c8f58c63668f5e29db68b1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c08ac9679b838ca5ed713a8057b15d1f6b978265cd5a8c4d8438636dc43a1b`

```dockerfile
```

-	Layers:
	-	`sha256:eac6c1fca00750e69b16bc3b625f4521c646c76275a9b706bbf056a0b7231009`  
		Last Modified: Tue, 03 Nov 2026 00:11:36 GMT  
		Size: 9.4 KB (9414 bytes)  
		MIME: application/vnd.in-toto+json
