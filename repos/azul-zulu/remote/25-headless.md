## `azul-zulu:25-headless`

```console
$ docker pull azul-zulu@sha256:5f6b130e65ad4eca407280eb8eb13f78f74f7ca8be67504d1444d280c72451fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8624fed6bc8ea790792bee1fda3d72817fc8e5c19933d0f560b32b26d4187187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211791671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0b8986bebbaf0244d90a325676c36ee79782023b2eb09840270cdcc25218c4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:03 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:03:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0841994a8d76bfc089dd900e5b0b8cb104166438b51e9aab6df8ec8433ef20`  
		Last Modified: Fri, 23 Oct 2026 20:03:20 GMT  
		Size: 181.9 MB (181948092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:72609289297fbbcd7ac2ed9de396cfa6b989df886ea8290d60f7aae2da8a1451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcaa581e61a0c980197c9b8f22a1ed2316a000e404f9a73409de31aaa86a98be`

```dockerfile
```

-	Layers:
	-	`sha256:9a6bce1ea6b10ed20f60dd3730fb51193a0e8f2edc888745926d7206091fd931`  
		Last Modified: Fri, 23 Oct 2026 20:03:17 GMT  
		Size: 9.3 KB (9295 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e90847c603bbf886d3b6c1324b1219b8175a53eaa802684e0805f61fd02017af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211274209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef7a9460d4a75c4803ce2437b982797021ca5c05477f4c14e60a3056af0ea45`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:05:09 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:05:09 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:05:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:05:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:05:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac58b0562983d30eca1a0ed497a48b951c3e359f11ab8f423bb6d3ef16f7985`  
		Last Modified: Fri, 23 Oct 2026 20:05:29 GMT  
		Size: 181.1 MB (181073731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:00e0d1c212270e1209d5f3df4c357e1b1010a1b3475268c5c57498f303328282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2057b8267a8e2251d23b12a2521f8915224eb0c06498ec3df214c773b87016c0`

```dockerfile
```

-	Layers:
	-	`sha256:4e91f75b28e6e076804e94d2d3591734c74db635124bb8b2b799e04f62d7ac1a`  
		Last Modified: Fri, 23 Oct 2026 20:05:25 GMT  
		Size: 9.4 KB (9399 bytes)  
		MIME: application/vnd.in-toto+json
