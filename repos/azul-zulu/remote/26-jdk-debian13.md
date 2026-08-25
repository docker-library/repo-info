## `azul-zulu:26-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:3a28629953cdbf353b8d3365fc223961705ee56f975fa427ebb36561528aca25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ae7d5adbae0d58db2e2cc6a13a07105f08d1400196ef563cabdc60c829d7bc2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217301606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2988d49ac26f9e27e18318e55e7c6fd00010eed3b98bc9e34eef54a8fbb12437`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:15 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:50:15 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:50:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 25 Aug 2026 00:50:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c372c6a797a9329c09165e87601b44ab6da5abea090ac91f98b654f82e2fe7`  
		Last Modified: Tue, 25 Aug 2026 00:50:33 GMT  
		Size: 187.5 MB (187508948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:937128541b7810a5f33656d3e7684ff1eea29f18509f44ecbfa66dc4aa92eb10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1be9e9a071eb8088f78a102dd255e950ce289cfda1576fc386dd65e0d9711e`

```dockerfile
```

-	Layers:
	-	`sha256:7c5e89d0a6d965a0db2c17314c47e4c4de596dd3a5a67bc3cfa813d6db599ff1`  
		Last Modified: Tue, 25 Aug 2026 00:50:29 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ab154dfe2945d160b4539f925b956cc5c47f19f692381131953c0e268692c2ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217371258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c995ff61911eb4edd6b97a70d57226ed63cc7e558df853088ac8f03a9c872b7c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:24 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:52:24 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:52:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:52:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 25 Aug 2026 00:52:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4645ad5b0f66e35b8b235f1377bab19eddc044805d613e50c21bccd654905caf`  
		Last Modified: Tue, 25 Aug 2026 00:52:44 GMT  
		Size: 187.2 MB (187211676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2b76cb162239ae80e2a94219c6cfa7f9f81479e54822ce391eb39d42dc99c9d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d428022c7e1683421502c71a2717d9745be992d2afcb59849ebc479b20437f4d`

```dockerfile
```

-	Layers:
	-	`sha256:0349752b596a6ae49655259db980e561ce92ffd0b9683dd923f145f1527de2ff`  
		Last Modified: Tue, 25 Aug 2026 00:52:40 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json
