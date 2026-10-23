## `azul-zulu:27-jre-debian`

```console
$ docker pull azul-zulu@sha256:5682efdef44a68c0b27f7a8a7365945dc662b209af6dfca9983d65db2a478394
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:98669d61ba2b9dc6862618ed58b4b4acd29ce1c35f721f489f3aa057dee1ad32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120933418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf8387071079f81f34bdd1030192e583c5cddbecff07f1dfa4eb153f1947746`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:43 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:43 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e4665ae77eb78554169f37af0cbd52a13214dc8ea9b84902bdc9548964ee5`  
		Last Modified: Fri, 23 Oct 2026 20:03:56 GMT  
		Size: 91.1 MB (91089839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7e017f4b818f030df54c9f0c4e3e64e27de53fb4f6fbbd3c65629ae76c923620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0e7276ffdb8ef497b61a77b570dd6199f96ad728b0233c5ba97cf2e0cf570f`

```dockerfile
```

-	Layers:
	-	`sha256:f6fa34bb7a53c3e7613c3b4b344686daa521a6b6da90c92f4d85bd9160ce8ff4`  
		Last Modified: Fri, 23 Oct 2026 20:03:53 GMT  
		Size: 9.2 KB (9186 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e69e593d5c4b855e28543009005ff360060274c81286a96ac971e345d2a58650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121181508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5a63ddfefda8e9cfad7ebf0c5de896196ca3cb55be405acde8820a66e12072`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:06:01 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:06:01 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:06:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:06:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16629e85088ae34b8f2f4cad9d297352691ac5ab89c14474c011ed282d59fc23`  
		Last Modified: Fri, 23 Oct 2026 20:06:15 GMT  
		Size: 91.0 MB (90981030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f48f15b9ab61574df40e6dbc627059bc4f21275317aaa8c32b24014338a390cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274774c87e7a783ddabd09fa42bf061f42c149789769bad215e6586d1a2ea05f`

```dockerfile
```

-	Layers:
	-	`sha256:702fa3d3026a08a4ba04e95badd62d5aacadb9035a47d3af2445f2e6afafd054`  
		Last Modified: Fri, 23 Oct 2026 20:06:13 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
