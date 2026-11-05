## `azul-zulu:17-jdk`

```console
$ docker pull azul-zulu@sha256:34cd79153c7506a7e39b4c3a4e6a84a49582d7334cf392341c42bb23c4c16357
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0e4415cb9b87db34d334a5550aeb7a29e5c9d70a4384d9f11e90eb9eb7e2187b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181886954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbbf8ab6c521f05423f0ceee9df01c80dc8f151d462504c96f62827a806ccbf`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:35:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:35:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:35:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:35:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 07:35:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898b51ce4b7135889c07b173dde0ea76fca1feb88bd37b0cb88c89c08181aacf`  
		Last Modified: Thu, 05 Nov 2026 07:35:33 GMT  
		Size: 152.0 MB (152030822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a18e069b750e43c2c5249105aeb5eca6c0fffb750bf0979cfd8fe4e03c0dba78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e031213b086a97c9f5a2b95d4a2ba47dbe5f4680ff7d09f029dc9d79263b49`

```dockerfile
```

-	Layers:
	-	`sha256:dc115ab04741693471da960190550f23f946cc7fe618e0487b747019c4aaa69e`  
		Last Modified: Thu, 05 Nov 2026 07:35:29 GMT  
		Size: 9.5 KB (9523 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:577266cd5d2756977800a563ad53d9e337194703ed0715980bc61a0518e24ed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182297340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3561f67e6576e97503a6d952073e52ac777e21fd5dd96aec68b3aefd856f16e6`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:00 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:39:00 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:39:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:39:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 05 Nov 2026 07:39:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe27f0698b21ad9e37dd498a0f891934246aa92b8501abfc1d60912358e95a5`  
		Last Modified: Thu, 05 Nov 2026 07:39:15 GMT  
		Size: 152.1 MB (152083303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:69b7033205ae42f2a6e68cf9205681f868787d5d1e20b22bf178658675b6158b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9ec66dddbc11d58ccc0d332a588f693de83d87a7f48f750a6d4c993779643f`

```dockerfile
```

-	Layers:
	-	`sha256:ee8b64481b7ca84a03f6216b920619eefcb00adf1f188338cb708356422ef0b8`  
		Last Modified: Thu, 05 Nov 2026 07:39:12 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
