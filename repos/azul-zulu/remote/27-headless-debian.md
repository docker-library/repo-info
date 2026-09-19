## `azul-zulu:27-headless-debian`

```console
$ docker pull azul-zulu@sha256:0111b3af860f5f3c61abe2ce24b6f0fd960798f50ff9ccfb0313e705c2ddc4cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:be583758b4d8fec99121bcb045702642b435c56adc01007aa930d31bee3bde53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213134350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d07f4f01d7dd99a0b75e2fb936e80c84b1fd7cef5feaa9581209e22cf660a9d`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:33 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:33 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Sat, 19 Sep 2026 00:44:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6e6d4df64628eaae7c4901d92747f1a528436981b34de815b1c27bf559a4ef`  
		Last Modified: Sat, 19 Sep 2026 00:44:50 GMT  
		Size: 183.3 MB (183303932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:190934e4c395475c1f30815416688e21e1857b9feea9557d89bb623fe0cea1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0346cd1bb2f28bb0fe6d92772c028861e44c019fd67b23d21a1780e04af180`

```dockerfile
```

-	Layers:
	-	`sha256:4055c387c59432b2419d394fa9e2b0144b6a97e2fae4c3f5a8a5af61127aba68`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 9.3 KB (9283 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:17d5a505f55e5b688cf6d9dc7c26e1cd8fa7942a9d8f7817b97f358932777f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213174778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3d3ce1b22096989d1b1785dd6cae630300bd58f2f698ef6416c455f8bbf95c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:13 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:47:13 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:47:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:47:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Sat, 19 Sep 2026 00:47:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b432a18e491b026bc061364dd65efbfbc045bf7a7739d089fd2f8fd938197703`  
		Last Modified: Sat, 19 Sep 2026 00:47:33 GMT  
		Size: 183.0 MB (182985087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:51f7f8dbdd26250046a807f2ea090e32278148be9662c18b2c37ce3d84e1eb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f1a47d5b3b52a0fe9033b0356d8dd13ec5788b78522caebad7f8c6c833acd6`

```dockerfile
```

-	Layers:
	-	`sha256:51e4263f14bb362b9491352d99bbd55b357ec4d08f1ff0bca9084c5f8d6737cb`  
		Last Modified: Sat, 19 Sep 2026 00:47:29 GMT  
		Size: 9.4 KB (9387 bytes)  
		MIME: application/vnd.in-toto+json
