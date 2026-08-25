## `azul-zulu:17-jdk`

```console
$ docker pull azul-zulu@sha256:f63e3acbc529ae79137c4ea07232a55eae106675b5aff8acd1e7abc98c5a1b5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:075c5155ca8bc4b08234a2b9adfd53b061ca1e0adb71fbaecc9739d1a7fc0e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181515855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162e5d8d383826fa9ace6820f6203c730742b58ed5217c103ce3e10d9e0722d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:48:40 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:48:40 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:48:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:48:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 25 Aug 2026 00:48:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86aa7a6ef3a6a2f4ce8b0d4ccbbd51e1efce3353293241a615c29a3f4bed91eb`  
		Last Modified: Tue, 25 Aug 2026 00:48:55 GMT  
		Size: 151.7 MB (151723197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d796d2e0b0c7a81415eb983450e0d8753ae2cf6fdc22c9efdf8cb692568798b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711f6bd91bb7bdc571511ff59ac22a265ec6e16641d0c7d1c1885aadc7020aa5`

```dockerfile
```

-	Layers:
	-	`sha256:9be7c5bcc28bde3003c83122d2e3048c54e3da0c2ec3e7f9d5b502f9acb19bf7`  
		Last Modified: Tue, 25 Aug 2026 00:48:52 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:14422b81809b3dfa0e92d01f5e47c7dbc19b94256f4eb5f408c24c4f1f63868f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181876766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a981e32ff3a08484c41d579e6e1bfb4df49954883418d58c00486f135d7495`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:19 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:50:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 25 Aug 2026 00:50:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1307f0f7fe5fe6384bfc94de91efdffef4d1f81c53ebac3739b08db6b495f`  
		Last Modified: Tue, 25 Aug 2026 00:50:35 GMT  
		Size: 151.7 MB (151717184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c469a6de226c16d1340c17dcffac9e3da2fb2d8e98af58265b15ab1b37e7b027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6805c1139038ef911af9f84cfbc6f9574a424247ed2027c238282f4ca176391c`

```dockerfile
```

-	Layers:
	-	`sha256:8327151cf94374048e4f15227942c597687ae84e475d492bd3203b049bd66b8a`  
		Last Modified: Tue, 25 Aug 2026 00:50:31 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
