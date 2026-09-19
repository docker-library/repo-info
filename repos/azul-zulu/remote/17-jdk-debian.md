## `azul-zulu:17-jdk-debian`

```console
$ docker pull azul-zulu@sha256:45d80fb1cff930e9f3df52af23749456491becf04e228712d2a107c7b31a156d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c145cec2730491640381efe2ecb5b51b84da820bf5f39db594b79febeb8b0e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.6 MB (181554015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c02ebaaa9be4e09ffb4224d92f3ef7dce75435d0304b4cc814debbe1cedcbae`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:59 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:41:59 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:41:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:41:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Sat, 19 Sep 2026 00:41:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b60cfdb04fd65556f2288dfd6f0d036c43be6a47e7d0faed4e119da9c0b071`  
		Last Modified: Sat, 19 Sep 2026 00:42:13 GMT  
		Size: 151.7 MB (151723597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0a1b6543d43efd2ee3cc5cc18444a749d0225a8e52e3078435c8a43b6dca581d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198ec84b57233abedf050c0b29b94f7aa1a2a0140a265f039e8830f87d5273d4`

```dockerfile
```

-	Layers:
	-	`sha256:9b4552f38bfab6f66e78fd6aa156447a5890ff269f1935208ada0e68cc138914`  
		Last Modified: Sat, 19 Sep 2026 00:42:09 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:887595debdd2dc41b812887add3e0fde5f00dc74ab3fe22bfa35f7f98c0399c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181906698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fce314d46b083617e3e597c80249caa24b0b09dcafab700a89bb265b3afddd`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:31 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:31 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Sat, 19 Sep 2026 00:44:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d4c96e823ed90c52ad53c92d8c7e119cb08c50355d7d33a3ce5116cf93fecd`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 151.7 MB (151717007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8b1d6ca9d061f664997280841a5061141616fbfd8ed5c10c0dbb0d7cf181cbf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee41e0567a095c2d5ef8fc062abf318211c40f9a7f6819f782406b44b98df03`

```dockerfile
```

-	Layers:
	-	`sha256:0b44e64518d338dbf181a989209a985339188b155f9874c0cc58ed59aeb8e764`  
		Last Modified: Sat, 19 Sep 2026 00:44:44 GMT  
		Size: 9.6 KB (9632 bytes)  
		MIME: application/vnd.in-toto+json
