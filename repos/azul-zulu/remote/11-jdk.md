## `azul-zulu:11-jdk`

```console
$ docker pull azul-zulu@sha256:4c893e6f65de81f2b70f887f5f644f0aec4e8488ff45170b168433dd4674653d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7d9141da80da65387c1c1d7285bef93cb2db8a788e229eecaa4afd889c00b9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178386772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d321afd46f8c1cab7df03f5307623c45cde5ee11aab30ebd8049c0271aa6571c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:38 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:40:38 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:40:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:40:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 14 Jul 2026 01:40:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6248d8999abd7eb3483978592bf6f5aa7c4203bda52ad81191d64deafe8d3f10`  
		Last Modified: Tue, 14 Jul 2026 01:40:52 GMT  
		Size: 148.6 MB (148605867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f265f9ac769046297190c92f1c8c757d611c94aa819d2662b808d0acd472889f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a794f2946d0d9e7d20d1b993497efde2397f0738f759c630396cbefe80d50c`

```dockerfile
```

-	Layers:
	-	`sha256:311fd7cf6bde72a93da980c802d3953177f5546d5bd9c80061d1f31140cf4d6e`  
		Last Modified: Tue, 14 Jul 2026 01:40:49 GMT  
		Size: 9.5 KB (9506 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:880988f2c8d68fc623f11155963411467c0d8ed0c90079c042e1ce48c37bcafe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178426378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab11803820ed16878fb83e1d865d978926ce7f23e6063c31739f924d9a774ada`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:29 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:29 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 14 Jul 2026 01:43:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87aa91c31fce8731b702d833b7cef1c4c944a6061cc7e5a4ad17f893a306665`  
		Last Modified: Tue, 14 Jul 2026 01:43:45 GMT  
		Size: 148.3 MB (148282673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:366bd715bdcb49e3c94d82834d43de70dec34d8754649ddb86a801d410c9d909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744bf58cda5df6f3864867858340327d33a2c19eb7dd33567fbc7180ecd9b52a`

```dockerfile
```

-	Layers:
	-	`sha256:89975fe151a6ac80dce1d92323047828480a2a5a82dfe6bfac8e49c81509755e`  
		Last Modified: Tue, 14 Jul 2026 01:43:41 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
