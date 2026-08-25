## `azul-zulu:25-jdk`

```console
$ docker pull azul-zulu@sha256:f8677d5af0144655ae37a86c6a2eb1bf4dab411cb87f38c8dc166d7efb188f15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:13a58ede5d2807fee956ceb3d25b94532ebfef6647c620c2027df628d9b77bb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213929301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85140595adc1bbaa6a259000cc329b5c149c5bb84319d26aae1a262fb4e2e299`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:49:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:49:41 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:49:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:49:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 25 Aug 2026 00:49:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142164547f4cd4284a8785ac1f6ebd5f4d0b63b30e2e5dd8807c55fbac34c2e5`  
		Last Modified: Tue, 25 Aug 2026 00:49:59 GMT  
		Size: 184.1 MB (184136643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:60eeb84c0d572df55f667384a3218c4a33636db2ce7a86224e5f5d8a4099c7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e7778d8995841c18bd023b0535fd3251845cf1059d9a59f2dc72adbcc7d27c`

```dockerfile
```

-	Layers:
	-	`sha256:af91f2289c32850b21c9c7073f166afb35b3ea748c8da360d43dc1ad63397997`  
		Last Modified: Tue, 25 Aug 2026 00:49:55 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7e5ea900fd091e91885aae7e5d507c10edc311195f6e99792f58037e0f34e16e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.4 MB (213405154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b678661c3e5f97b290cc5b2fbbaea882b6c4037cc830aa86f7acb4afbb6b8b7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:51:54 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:51:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:51:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:51:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 25 Aug 2026 00:51:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b248a3bd7340327a0ee51586c0eb6cdb458f55c57ad55ff60481981fb425c0d1`  
		Last Modified: Tue, 25 Aug 2026 00:52:13 GMT  
		Size: 183.2 MB (183245572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7f6a07dcf3c682f5c86c4021fedca57eef58cdc23ad1b76f2280d130ad5d0a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a08611e3bbd54a9e6cbe8cb82b8e436e75df67042b6373a18e5f5e403285c673`

```dockerfile
```

-	Layers:
	-	`sha256:768ccdc2c2761703a99594225bbbc346f7ba3f8f277a17272efe62cefbfd73eb`  
		Last Modified: Tue, 25 Aug 2026 00:52:09 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json
