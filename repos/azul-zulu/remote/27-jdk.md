## `azul-zulu:27-jdk`

```console
$ docker pull azul-zulu@sha256:d5549ee66e6a8e6632e0868d738471b9cfdf694c6bea69f7c49481a254047c83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:443e20dd9f7795c854e673f29574d0e43cd6d4b05cf903a7b82649aaedff7926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215359904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb25be017404f173b7ef43a1faeb491a67051d4e3f030d0ed75ea6ebf33b3c6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:54 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:54 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 06 Oct 2026 01:40:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd446cdb93291af9e27989c3728d3b08fba41b54e5e739264367504d1124f522`  
		Last Modified: Tue, 06 Oct 2026 01:41:11 GMT  
		Size: 185.5 MB (185516554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ad6116e8bc51af76f2f0b6fa5d956c7a356e0d4f9606c324ce5edc66df99d787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cfb5a2144b141d38704c69fc89b34685c9c7c0cc35559a6a40fe88740988541`

```dockerfile
```

-	Layers:
	-	`sha256:f939a1a2541d9454bf07272a82799944007e7129c1a16fc7a1f699d97ab2e951`  
		Last Modified: Tue, 06 Oct 2026 01:41:07 GMT  
		Size: 9.5 KB (9492 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c3da572d25061e12a0416b5e3a517fb409f40a7d3fdcc4ff08f44419c69ef8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215372565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37018624d9da9be633799f9a3631106eb26c302d9d681f8fbfcb4308930c1888`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:10 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:44:10 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:44:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:44:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 06 Oct 2026 01:44:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c271a89442089c9f39d8f6d6a0de86cb9886398e5729e5b21ad7c66f70fd5d64`  
		Last Modified: Tue, 06 Oct 2026 01:44:29 GMT  
		Size: 185.2 MB (185172283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:060fa6851d0e2c01dced8371f5f8479ffbb649e4028c4192f54af1daadeaf8ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b808686079de94e25e50bd25502cc870cc156d6cdced6e9137923c364c52ad4e`

```dockerfile
```

-	Layers:
	-	`sha256:93924cc5d98b5e0ff8b99a35f13b12510f911d04f4d467d87e5421dfb560e877`  
		Last Modified: Tue, 06 Oct 2026 01:44:25 GMT  
		Size: 9.6 KB (9608 bytes)  
		MIME: application/vnd.in-toto+json
