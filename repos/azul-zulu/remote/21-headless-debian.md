## `azul-zulu:21-headless-debian`

```console
$ docker pull azul-zulu@sha256:118694e44bd61ac4163b62e70ddf0620abcb3e963151841cc150a17c64a867f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:31ac01de5346a10718c3e6a30e9499f39c6ebfe3914df8c71648fc4381ea436c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192530737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc2c80781bf6b637e824a2b9b01c9075539b886b39c8f217bc18c37a5f71e36`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:30:16 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:30:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:30:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fb90b418f8ad9dffe429028006da5d33c815f2f08fdfb6a73c41e4240145ee`  
		Last Modified: Thu, 23 Jul 2026 22:30:31 GMT  
		Size: 162.7 MB (162749832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1b596efb30bc78cd4638a95960d854c356f0507c48cad796c84e25d74235ba75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d7f2801f6821f596f54f19bea62ff767e7089da01de44793c909f604fd2425`

```dockerfile
```

-	Layers:
	-	`sha256:6924ffe0fcd8d562abd9a6b1f74c4582d9796214c9babfb1495640456c189f45`  
		Last Modified: Thu, 23 Jul 2026 22:30:27 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:20e6003964e4b00b9727c005f9837f56fbcc8eac282e74fa450e71b40ea661f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.2 MB (192189214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f8cee0a7de5f2445054c2959e1fc601271f3ce59f836b7acba6bad22b56ddad`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:31:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:19 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:31:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:31:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da41fd67f0287035f6a1ad40ad4fadb6a769749010ec284d6a02916b7a79838`  
		Last Modified: Thu, 23 Jul 2026 22:31:36 GMT  
		Size: 162.0 MB (162045509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:286520cf14edefea68b839e395467e0fffe51e37601af9ce1b85737a7cc19ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b7474c948f7ce819111109d4155b9b5bc0286ace3f12289cd598114ac7bcfd`

```dockerfile
```

-	Layers:
	-	`sha256:99ff6b760755eb983180f04da95a272f3016b4fa3c760d420de23542ce4a164c`  
		Last Modified: Thu, 23 Jul 2026 22:31:33 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
