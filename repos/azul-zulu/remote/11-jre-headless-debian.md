## `azul-zulu:11-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:c7aa060e7fdb0674fa71ff45e0f31e671432c86739c96d4d852c68c308712452
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:85215ecbeb923900588defd84f692950793612b5e9717ca434ba8dcdd15ef395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94825383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40a93ce2e16da515263156eb9130b4529b09b563b61fa093228a271964983d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:40:48 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:40:48 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:40:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:40:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f563e1eacc7fd277b2b1ed1236839cad420b794adf2086ec2ba3484dbe9b77`  
		Last Modified: Tue, 14 Jul 2026 01:40:59 GMT  
		Size: 65.0 MB (65044478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c4cfa0d09aadfc05dd79213eae707869cab1e5fc7c5cfa371df0744ae71ac6d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2956a10624347031a23e6ed385d024d47b5ca4571a77715060ac1f69730cb7ed`

```dockerfile
```

-	Layers:
	-	`sha256:66c1164e87d77e1d159084e675ecfa3f2598ae5fcd706f99d9cc1759a9f4256c`  
		Last Modified: Tue, 14 Jul 2026 01:40:57 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7661c5005f9d126f83eaddc5f8e4ddd9910831d7d854a3d33e67ec0624e1d8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (95027649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f427b95ed2994199c80667cc0052b908eecb059ceabafa46e00b744b37169acc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:53 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:53 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.31-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9cbe40b3d93ae3b18e6b4896661dc91bf23cb09055c704d88ecf970b2dfa746`  
		Last Modified: Tue, 14 Jul 2026 01:44:03 GMT  
		Size: 64.9 MB (64883944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b2a6707f6adb9269303c66df015a3522f5f519af40c59d2cda60b58b8ea75409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5622199ab895cc5b8f93dd137d2a3b835556da1a81bbfca42aa2dfb8258b81`

```dockerfile
```

-	Layers:
	-	`sha256:183af44062c2c942a765a5394d3c0060ef6a8b8d669ca8c97423afae9bdbfee0`  
		Last Modified: Tue, 14 Jul 2026 01:44:01 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
