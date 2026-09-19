## `azul-zulu:25-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:98dd05038b5ccb62c2aaac1a2191e0f7debaf1464cb9db69407cd3790c1d66d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fdc022179b8b9d760b5b3bc7075989fed70235df0e5772abf709423510e6ca14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118345234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b0685c0480ef32d1b4577c5a8acfc2cbf7d746c875469936cdb32890fd6372`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:55 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:55 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ef02b25573af99a7e53f0a1e3e7cfc3c57601d8f2303e327b525f901bae5e0`  
		Last Modified: Sat, 19 Sep 2026 00:44:08 GMT  
		Size: 88.5 MB (88514816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f59a51b78770b1f79b589437c80375297170423b26ee8a057c0fafc1bfa9caac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e001aafe817f6b47464ea8fcb79c41771095c6fc11543287b4151cc077653ccd`

```dockerfile
```

-	Layers:
	-	`sha256:c09d68c6499e5724ae41c167469185631a0f268a01bd58c918996d8b60bd2b27`  
		Last Modified: Sat, 19 Sep 2026 00:44:05 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:585cec0bbc0b4e3bb011717996ff4cf6d8059c5c02b8e6d9f8f2694f04672f0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118294502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33cf77a148ea7739e0f662f67ce908ad660c87ca61aef0e568676a5bbc45177a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:09 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:46:09 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:46:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:46:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ca96d69cb11e8d76fed61e5b80454143fa470050f6f36082bad2e3b062609b`  
		Last Modified: Sat, 19 Sep 2026 00:46:22 GMT  
		Size: 88.1 MB (88104811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b8f8e8cbbba77376633fb756d3864b91ae84ba743de61db245838446e45f9e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770ec509b99c0b4307159ccc08f8143d4114fba3176a424e546979475c40aa49`

```dockerfile
```

-	Layers:
	-	`sha256:88a72608dfb07fb14e13a8ca3d7809159d95cbdfb2e7a91ec4c3a2c877aae662`  
		Last Modified: Sat, 19 Sep 2026 00:46:20 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
