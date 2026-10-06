## `azul-zulu:25-jdk`

```console
$ docker pull azul-zulu@sha256:69c15f697dcf6e42d11e581cf929ee340584e74f905cd77f3e300e6b1c9a9568
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:83bcbfbe2f1a153b73b34faaa020ead3fec1da7f4ffcae33f66a074b84f3151a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213980759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11946c97407d1a876597004157e7017f30f5f00fd4af782b9318ac2fac190bae`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:50 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:39:50 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:39:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:39:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 06 Oct 2026 01:39:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3b96e00fbadd8f2a9eacbc15e0669057f6e166cce924475b56892862ca09ce`  
		Last Modified: Tue, 06 Oct 2026 01:40:07 GMT  
		Size: 184.1 MB (184137409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0b2cc326e32f31562b1c9e22d109cc6f3f52c47de8846a78024985788093e511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ddf405e2d5f2465687af6eca98ec3d742f3dcbd713d732011a7bbcc45ae48`

```dockerfile
```

-	Layers:
	-	`sha256:ed18b34a1c5cacef58c5d1752f761292d8d85edeef0de409fa65bbe9af78d9c5`  
		Last Modified: Tue, 06 Oct 2026 01:40:04 GMT  
		Size: 9.5 KB (9509 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7388890ebeee9c4edc0545b29f191461c723a720bb2b0c0649d79b3ccb1f0624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.4 MB (213445701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27454cdef9ac1b81f9ca2c340088371a3c04c48fd3d20737cdc8e6e7801c65ae`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:43:09 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:43:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:43:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 06 Oct 2026 01:43:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac0b7aa095d565b2402e4c1103656bcb4b4f8ff54cf0ac6fad6e8ebb2a223d0`  
		Last Modified: Tue, 06 Oct 2026 01:43:28 GMT  
		Size: 183.2 MB (183245419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:26ac26bb5b584bc7061483fa918653d07e71a6db284fa2ec7fd98b35312564d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eed44220961ba554ded75cbf11fca02eab126f2ff2bc6fce95c05989cf77246`

```dockerfile
```

-	Layers:
	-	`sha256:2241a95d1faa8628cc97d8e166eea1bbac2222c0c94f4e1cdf9250903bbc6d68`  
		Last Modified: Tue, 06 Oct 2026 01:43:24 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json
