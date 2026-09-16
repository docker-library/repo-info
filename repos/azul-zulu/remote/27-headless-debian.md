## `azul-zulu:27-headless-debian`

```console
$ docker pull azul-zulu@sha256:d0069962bf616316b6f32bcbe7891faf76c7f0cd947265fc4cc25411e1175eb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fe0c0f90a9c3c70b0606553c4ec802b102c205b238ba225661b2779bd46f94a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216069437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba325618432bccc44c97add6bc0ecd70cb4154fd594d8bcd2b8e08a8ff5a43d4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 16:30:58 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:58 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 16 Sep 2026 16:30:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:30:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3d6f9140893705e741a3d2a64356f482a670f7b7eb76d69fe26584418bca88`  
		Last Modified: Wed, 16 Sep 2026 16:31:16 GMT  
		Size: 186.3 MB (186276779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5587b21dddca88020701fd50ea12d9b45fbf4b5225f5081bf8844daf2547a914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a1b66b5ced82cde88424662acfbb75ba42728794ac919dbfbb358b10259886b`

```dockerfile
```

-	Layers:
	-	`sha256:4edb38909393893c7ad4a715c959592cf61ebb46d22bd934c3155e84df128fb2`  
		Last Modified: Wed, 16 Sep 2026 16:31:12 GMT  
		Size: 9.3 KB (9282 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:579597d970acc24dc80e3661341ee771eeab0299c5e09f36caefd6e8398c4c02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216460225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d828c88e126f442f7124ef4c081e583b023746d46f874e92d67583b9903804ed`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 16:30:23 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:23 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 16 Sep 2026 16:30:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:30:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9610110387d1a74fab0b5934bc81d44af808bafb3783547ef8643d772a4e7617`  
		Last Modified: Wed, 16 Sep 2026 16:30:43 GMT  
		Size: 186.3 MB (186300643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:44aeeb40673d9bb0c71d0812cda59d38d09b8deda81a3cd5eb6136a9435d83c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ae18ad9b3f4669c5e7ef9613f127fbff793d6d3a9647ea2c30b96553b64ff56`

```dockerfile
```

-	Layers:
	-	`sha256:da4730446823b0b7d9dc2bbfc727fc70f1a0903f0cdf7e46c8dd0525c1ca9241`  
		Last Modified: Wed, 16 Sep 2026 16:30:39 GMT  
		Size: 9.4 KB (9386 bytes)  
		MIME: application/vnd.in-toto+json
