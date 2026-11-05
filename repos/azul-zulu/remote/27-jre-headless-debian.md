## `azul-zulu:27-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:50310a7071c6924e29c1bd7f4ee3af40fce66a2c85f7449bb0dae3c2c6c1855c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3ef3517d67835a07c69f07f5e8c9843d49c9d677d9e1341b7dc5dc7d0ff04549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118935404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1938294c9b46fb2bc0f2431f1e1cc703464d8dd54e330ec0829bbe46acdc762a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:59 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:59 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27652e0a50e2c428e0298349bc65a883898f2fc8cfebe3259c12b2175b9875a`  
		Last Modified: Thu, 05 Nov 2026 07:38:13 GMT  
		Size: 89.1 MB (89079272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:51242ccd4cb8e3c0d21fae5cb03b8ac8b231ea6da567dead1575267e3f6981c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3aebfa5045c0466057e681d0e9d2d11e55dbada09fde3264a058f973c8167e6`

```dockerfile
```

-	Layers:
	-	`sha256:f6f6e4eeb6c608ca6dfefcae290fd55ad774a0df60d527d354d08999710f217c`  
		Last Modified: Thu, 05 Nov 2026 07:38:10 GMT  
		Size: 9.3 KB (9314 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f27503caf4f147accbadcc3b78d97a906c83d022f47d7af34ea3df1f967278cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119201336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d6c7ee08dcfce4a46b248c7122a82a88fa96270705592712d5ac9bf40aedd1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:52 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:41:52 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:41:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:41:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab871fe9953c45b115facbeb14a1fe3d477ba06e074f9b611a5b2d8a3dc9bab1`  
		Last Modified: Thu, 05 Nov 2026 07:42:06 GMT  
		Size: 89.0 MB (88987299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:581c0e5986c3babcc4da247426118c7e3af031e54645821aad5a9c533fd515cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0701dab6162ed39b23548bc384799cd409ec7776c37fa3d513ba7602205502`

```dockerfile
```

-	Layers:
	-	`sha256:36cec2cc48db9f386c2e488cb5ce83a942c3b9c4f4efb1723ead1c434168f199`  
		Last Modified: Thu, 05 Nov 2026 07:42:04 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json
