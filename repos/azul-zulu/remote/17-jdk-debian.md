## `azul-zulu:17-jdk-debian`

```console
$ docker pull azul-zulu@sha256:ea4e014b2b701c6684550f4926d4b2e4f722d79c80c2272f36b92da53af0bfcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:faa2769082792475bacbf4b894338e4663af5718d9468ff77efd50b222c35ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.5 MB (181502472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6583961ce782d2017d5d7e1ccb5b8b543317823e02e10da12696a6d1caa4a6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:37 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:37 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad3041fef00cd7964e03db97a41a1091dbbb3d37e57f79a7c4558a6501d0903`  
		Last Modified: Thu, 23 Jul 2026 22:29:53 GMT  
		Size: 151.7 MB (151721567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:305ee70be2b14e6e736d07bf56e78a3f7233e8504fabec3be4026a33fa81e3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf91a02c71d15220f71038a59060a926d55e86306b87b1a117a5c92c45fb3f2`

```dockerfile
```

-	Layers:
	-	`sha256:31f94ed50d3820605de69843691aa6da8f292579adf74844e4ff4c29736e4ee8`  
		Last Modified: Thu, 23 Jul 2026 22:29:49 GMT  
		Size: 9.5 KB (9507 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4f8bd3a58ab2cd8c38a4a54d0d5d28229996f75e92e4394fe1129577703ed6e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181842629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4769352e3d360ad9f34e0ba05b8f063e89e7b5e82844e5e4c694b52f60972f0b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:30:38 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:38 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:30:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:30:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6179bb627bdb0b6281f4c333ce8f8724d3549cc3e10569158fc1ce49b366527a`  
		Last Modified: Thu, 23 Jul 2026 22:30:54 GMT  
		Size: 151.7 MB (151698924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9e04fcb4f718e4dcce42af8873122f10075155e83b852408d771bf3391a791e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d922df6eaa58e8a0654e86afc6403f9516f2d3cf5fce2a45d5d0309463092c`

```dockerfile
```

-	Layers:
	-	`sha256:d822713690a53cadc403fb81e9a97176cd3e8d74385727077281c40205a1ab6b`  
		Last Modified: Thu, 23 Jul 2026 22:30:50 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
