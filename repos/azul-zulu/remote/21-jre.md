## `azul-zulu:21-jre`

```console
$ docker pull azul-zulu@sha256:1c0d22af15901e3d11eafb6e1f466937faf651884c36192e193d6f03f73efce7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8777c3e1edf0fff16bbfdc653f6d6cf96ddbde9763ba994b079405c974845a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106266314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542fe7df22d8c09ebffe0fe20ece5f286906a107255f02cbc0f110f8e9b7f3f6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:17 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:17 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f609035f3619565e494f1fdef42621eca0324775e7e7dbb7d620e285c549d1a`  
		Last Modified: Sat, 19 Sep 2026 00:43:29 GMT  
		Size: 76.4 MB (76435896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:79b2721a975cb27031db594f72ad8210deac93cafd130049f391afac8412f715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0880a2f5f8aaae65a505e362d3f14a9128fc7a7a7cd9dc9f8faad009d9a5cc5`

```dockerfile
```

-	Layers:
	-	`sha256:c403ac2b01de8609d3b26d22ecbd4086572a02550129ef2c0fa9320b04926773`  
		Last Modified: Sat, 19 Sep 2026 00:43:27 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:73e50f78a30cf38fd7bf8c4661aef772ff6fb1f35fdb8eca3d968a5482f40510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106265130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e997de66c3d69d3cea753f9a7ae40039fc6ee3a3d8d67139cf61ba1e9c09a0c3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:18 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:45:18 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:45:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:45:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8af25de5a519a5cb509d221e1a180df54fd6dc872819b77d722af185733f48c`  
		Last Modified: Sat, 19 Sep 2026 00:45:30 GMT  
		Size: 76.1 MB (76075439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a7e130c31c8992cb3f50cf45268c8a97939812fef01f75960a98dd85e2bcca6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db4fb8d378a10a29eed4335de7dbf7c56ba3c2d3811576729114731434264c6`

```dockerfile
```

-	Layers:
	-	`sha256:33940b368abab0bc5583bd2bca5f4e2688ee747bda042105c911421ec478ca81`  
		Last Modified: Sat, 19 Sep 2026 00:45:28 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json
