## `azul-zulu:17-jre-debian`

```console
$ docker pull azul-zulu@sha256:a4744187d26514cfdbae6eecc79a2fb971ab3c55009dffd7554484aa522dfa9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:898ef844479e71d0465ecdbc0598355f29b8d59977a3a82aca184d3c8aa38dee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101155951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2252b442849d5daa133797aabace32d1dd71b13b1cfa64a0125474148dcaa850`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:35:48 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:35:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:35:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:35:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fafbe0f2fda37bd5333a02506da72fa0ba02513ba4947434d706a7e0593eac3`  
		Last Modified: Thu, 05 Nov 2026 07:36:00 GMT  
		Size: 71.3 MB (71299819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8de697e467a400933cc96019c34fbd09eb69126e22fda39627f1a59de58de852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72e44b2ecb89c3d56186a8d820a86b904213f481362d759db57235bf69811b5`

```dockerfile
```

-	Layers:
	-	`sha256:9cc0c53cefb41476de34f369c57ff08c2479d8a4a7327a451466e4410221b01c`  
		Last Modified: Thu, 05 Nov 2026 07:35:58 GMT  
		Size: 9.2 KB (9210 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e4e57d34ca0251912c7f68ea2963126879a304f4b160cd1fefb57174192d2beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101557533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac0f104d1a658c3eb643c193b1236732da910669ce057ee2b2b645abb88d9bb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:39:21 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:39:21 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:39:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.21.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:39:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8dc4287a62669c4d4880367dad8f9d444d5e162fc35a2623a085344e953bdae`  
		Last Modified: Thu, 05 Nov 2026 07:39:33 GMT  
		Size: 71.3 MB (71343496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f9245116e1052b0401e0fd864f641954993e541cfa674720197a5b8d0ca1af15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54130d4a94abc428aed084cc4ea56be0d10f95749fed6b205ff832bf6940567`

```dockerfile
```

-	Layers:
	-	`sha256:8120c7ce463dbec6c23ea6c6456c7f655f87a51ad1df791123886f8b1f757cb4`  
		Last Modified: Thu, 05 Nov 2026 07:39:31 GMT  
		Size: 9.3 KB (9314 bytes)  
		MIME: application/vnd.in-toto+json
