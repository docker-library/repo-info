## `azul-zulu:25-jdk-debian`

```console
$ docker pull azul-zulu@sha256:efb95a7d48c18a2b64ba930374b2923ad4b9ebba86790fbe16dd09a70803311e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c4ca4b948e2a8408687d2d59b18c17fb1eef0531c4fb29f166f677204c5b9324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213967594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681d2455c2453b9f7fe6546c797b2492c3fed7bdcdee94ff60a581e14ff0815d`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:30 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:30 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Sat, 19 Sep 2026 00:43:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b934ad030f5791a2cc41c38bfc89d7c72fc61fc84b85eb0595159c683b698593`  
		Last Modified: Sat, 19 Sep 2026 00:43:48 GMT  
		Size: 184.1 MB (184137176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:45cb610c5d58a63630c723c44c560a175f36d90ab62d730cd12ea284e99c69cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5f233f67e7b605596b28778dffc39c0a9f73a54fabee8af63831f228741955`

```dockerfile
```

-	Layers:
	-	`sha256:e66a73686c7dcd693c442b20dbc104b661fda9863e5e3d6093f36b5543406692`  
		Last Modified: Sat, 19 Sep 2026 00:43:43 GMT  
		Size: 9.5 KB (9508 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9419e3844a6efd9c8d57b27deb66c524c2b5172a99a8899e92c16827e8f5be84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.4 MB (213435420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc6734f9e1505204c5a410f97049105fb9f07acc5ae9c26033320fa39131e0b`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:02 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:46:02 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:46:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:46:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Sat, 19 Sep 2026 00:46:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829fb5f9aefbfdddee69313941f1c47e25b070899fe291337792f05bf31627c7`  
		Last Modified: Sat, 19 Sep 2026 00:46:21 GMT  
		Size: 183.2 MB (183245729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3d868e683f06884f965a7ae924b8d76f339888f31d8db4785342a2b4462ab737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415d3299f5bcc5f966475e8d44988b61a8284eb207c36303c44af17e5af17498`

```dockerfile
```

-	Layers:
	-	`sha256:201001556869bf0991994c7c186cc4e28d8532d7ae2944485c14db31b33999fe`  
		Last Modified: Sat, 19 Sep 2026 00:46:17 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json
