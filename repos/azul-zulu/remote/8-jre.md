## `azul-zulu:8-jre`

```console
$ docker pull azul-zulu@sha256:8e5d725e4fba4d21888fc80a2f5d0684085e6ae3450a387a646ea2f882a371d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8bffdea0cbb2d1c850d757b6d69f231bb86b2f3451035495706f43dbf1f7ce96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79160429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ec4310487ad74e5386c7bc0528f8c0cfdec85092939b2a0bfa5e752f3f9d17`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:34:03 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:34:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:34:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:34:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fa4de6b4a3bcc1c6ea4f25c2f8e7ddae9078a57a94b7c0c3f9483191974681`  
		Last Modified: Thu, 05 Nov 2026 07:34:11 GMT  
		Size: 49.3 MB (49304297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b245c1e56e595e664633a3c0b99e70ce0a5d1937816f6e9bd0d06298779f8f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e32e8a39fbeb459d09b01c5d4911ae22df4922e2c38202b1b1ce2d9094b9619`

```dockerfile
```

-	Layers:
	-	`sha256:97ec7a4d8b33bd3b1b3539a59287372fe0ebb7e695b91e7b2d6e16b37110eea9`  
		Last Modified: Thu, 05 Nov 2026 07:34:10 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:635aaa60b987caeb3503e4b2f1258bb0bcb2bd9ef84ef961023fe339eb421ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79755784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc9e7c4da518e43d584b4eada505f5e3100b141c489a1a0e1cd7520eb0642ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:37 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87886f4124d9fedcdbefd2e6669348c5d67404eff52c7656b481cc68be5e627`  
		Last Modified: Thu, 05 Nov 2026 07:37:46 GMT  
		Size: 49.5 MB (49541747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:136eeb05081128381577af870f22536d8364168d0af7c33102f71d498f1368af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb512ba7e1886aafed452a4e1af148df4c54a4112fea6ec32e53ba1a546b30a1`

```dockerfile
```

-	Layers:
	-	`sha256:20d425b85231298c02b79489ae18050ca280d53a301adc6042294efb7d475ff5`  
		Last Modified: Thu, 05 Nov 2026 07:37:44 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
