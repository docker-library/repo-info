## `azul-zulu:25-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:1cd31ba7439ecf59e39c3ab6c2d969bd347ea4465966a999c521c82a67d38f65
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bcadf045fe3ce64929a295eaeb21e88e82073bedacfccb1984955450821f1362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214071675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f51c6dd5cfd850117161c85046d49cf33b669620ed723af9f8ecd52f1429d773`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:29 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:38:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:38:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 28 Oct 2026 01:38:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52da8ef72e42893bb60a85cad24ed582ed9dbe5d75e83c5969589bc1138c5cc2`  
		Last Modified: Wed, 28 Oct 2026 01:38:47 GMT  
		Size: 184.2 MB (184216439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3548271a8db4d9c0e61af0275d7b8cfa4a7f955b2ff87a38a36898330f1c612e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5446b1fe4a25ad48b63f9a9b318e5117c5c6be7bf999d5eb69c930c1b14fd6be`

```dockerfile
```

-	Layers:
	-	`sha256:499f72084dc47cee60daed60ab1dddcbc2a8bedc99c04bbab5e0ba6f6196f1d2`  
		Last Modified: Wed, 28 Oct 2026 01:38:43 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:81814162ff12981a4a547b21077e40d3db755d5e641bb02cd512a7f58ada3fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.6 MB (213553811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95f860ccd8ced4c46ff977c53cd01496a915fbc4fde5483082e73c35e2639ef`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:10 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:42:10 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:42:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:42:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 28 Oct 2026 01:42:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae90c1ae987d67cfc340acc52da1f779dd9f812f27fff401d38fe796efa6d64`  
		Last Modified: Wed, 28 Oct 2026 01:42:29 GMT  
		Size: 183.3 MB (183340315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4a9ad54b56d8c765454d51fe8e144e34d0a45f410a05d4064cffacd4dd1d9b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7b8fbcb1c364d22bb42d689f13dfdfb8f5c523766271a7771425c87e4cb29a`

```dockerfile
```

-	Layers:
	-	`sha256:ba6ca5d7c746ab1aa68e77799af02c7a0f1379d0764605451acf58b40b608f78`  
		Last Modified: Wed, 28 Oct 2026 01:42:25 GMT  
		Size: 9.6 KB (9618 bytes)  
		MIME: application/vnd.in-toto+json
