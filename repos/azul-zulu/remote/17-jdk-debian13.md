## `azul-zulu:17-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:e1d9f9ec17a1817d37d956fde7202b9560e78792754746155b487803d5aeea7a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:62816abb7fe8862e71779e7640cb1f61b852ae5c68eeef7b089f97300a155438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181880538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b68dbe61b7c19c895a3259b741e143eed0ef7729ef27c2276819fd7ed7d1a44`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:01:39 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:39 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:01:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:01:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4802bca0efe4f3199b9a42246100febf763d730f9313855f18cb264b077f1d89`  
		Last Modified: Fri, 23 Oct 2026 20:02:04 GMT  
		Size: 152.0 MB (152036959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2be2330e20e1ec3bf3b02a88213e2b6f9addfa81ccaf604c296784433643b728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e1025d8718ad7679a1b8a355b57795a3a13d1fda9bed809341242c77369619`

```dockerfile
```

-	Layers:
	-	`sha256:c188c9f712c9b8227a5f792c3b7167c079f25fae183f480693f1dc53126f52dd`  
		Last Modified: Fri, 23 Oct 2026 20:01:51 GMT  
		Size: 9.5 KB (9505 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f1a1df99a272f14d1888c451e63d503489d64ed6c988a88baf28a28fa628fe67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182289356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e12b3dc2f65dcbd1744a3c83b7620c47c98e6a03aa483d21390dd085111ed79`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:29 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:03:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ac60481a40e3c575ea0380792584152876da188784cd6316c2e4898b9c5c66`  
		Last Modified: Fri, 23 Oct 2026 20:03:44 GMT  
		Size: 152.1 MB (152088878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1ce798adf8518047baaae36e2524576fbd1ab47c111a0a641537b9b24a7c41ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5303b20954f5454acd2d592ab0f386d33a644d3fcf1c63c31afd2b0bac087eb7`

```dockerfile
```

-	Layers:
	-	`sha256:864b202a6f3cbbfffd5172e3747c64fcd6c01ad410357cbdd688603656d61cee`  
		Last Modified: Fri, 23 Oct 2026 20:03:41 GMT  
		Size: 9.6 KB (9622 bytes)  
		MIME: application/vnd.in-toto+json
