## `azul-zulu:25-jre`

```console
$ docker pull azul-zulu@sha256:8db43b2e6b55af2a9be15dcbf83da8b407ed46289b6b991b6890d90f8f54baac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2ee81551604468abe1db5f0423519e65dcc7e24b8856f9faf76b4c10d70c9637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120347349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f677bc58cf7734dc4a33a3e05008e66ea43d07603b26bb8a312919e9fd89dcc6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:30:55 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:55 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:30:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3fc25c9c40d33675fb2618aa93be8b42b732d0ed6c9ddc3f913b95bb52ab3a`  
		Last Modified: Thu, 23 Jul 2026 22:31:08 GMT  
		Size: 90.6 MB (90566444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:994ada23a4aea1930a323eb8e77d1936bb5408f926229d9975e7990926b305d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8def71548da8e39c81bbd3826860b513e62fd369834cd4cd25eb476a1a379dd0`

```dockerfile
```

-	Layers:
	-	`sha256:c535d00e023fa7f6795d484733c9f56a872491d2d18d3469cbfd2841754826aa`  
		Last Modified: Thu, 23 Jul 2026 22:31:06 GMT  
		Size: 9.2 KB (9186 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:35bdda15772cedfc5047476fd4f19c8ce9777768c24fd6957dbf60a24210f372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120280277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a71fcc6a3437ff5d7054d325b5b306b5bc99f3aeeef81e8f75a54b84f055053`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:32:03 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:32:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bcdc4cffc66b732bafc26282063814afb614593940ecbe3531114d484ae8111`  
		Last Modified: Thu, 23 Jul 2026 22:32:17 GMT  
		Size: 90.1 MB (90136572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:49700d29f220a87285f94bc1068cfab038218dd592ed104ec524d26973118420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20f41b916ba006d7a3a505064b9ff3b3c5d03b1b9005a716a5d55e3b7c6fe59`

```dockerfile
```

-	Layers:
	-	`sha256:365033bc50280bd8f231a2e89b5ef73ecd79ce56e87ed6a97b1949205df6cd86`  
		Last Modified: Thu, 23 Jul 2026 22:32:15 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
