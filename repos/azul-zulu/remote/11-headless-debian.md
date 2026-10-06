## `azul-zulu:11-headless-debian`

```console
$ docker pull azul-zulu@sha256:54c4bc7d562b9a4009fbb6577ea2457e5a65c13dbfb60ce9e7fb46d3c7f99c72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:30a998b061f1e7b590b69e6dad597ce244508a3d230b6a76b32fd4cfb00b6dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175047610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de9f890bc513bba53aba0714a9f9647f1625954eaae4855d1a079088f4a3666`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:37:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:37:41 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:37:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:37:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 06 Oct 2026 01:37:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8049ad5ee64ec388685f27cdfedf3b2081b87a08435f3a983b3dc8dec166579`  
		Last Modified: Tue, 06 Oct 2026 01:37:55 GMT  
		Size: 145.2 MB (145204260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:abbd0234f4b9e13b4de83eb5f3d25881f957a6bde30006d25fc5ef6ac4fb4d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eec34d150ff248544c22a5fba8a9fecafedb69377175e9c9486a5d094659a4b`

```dockerfile
```

-	Layers:
	-	`sha256:82733504dc53d2650557cd357d0ea70296873ed5ead1ed49c984ef6ad5324dd6`  
		Last Modified: Tue, 06 Oct 2026 01:37:51 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:accbf6c42b8dbae5fdf82f337eea49152336c12a2c3ff72bef1906b86264e5be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175098609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a29b933ad5a98cf5cd0c4ba43e28be5fbea534a6d15ecdae00acf68bed17db8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:40 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:40 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 06 Oct 2026 01:40:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a5cd82149860013f7481ccdba6251dc8a1a67ec5a5a5b98a1d6f789223a505`  
		Last Modified: Tue, 06 Oct 2026 01:40:57 GMT  
		Size: 144.9 MB (144898327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5762cde79359a1983f03c501c6b03fe9a4110e40ac7c8a867bb824f6be1f4aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e484ebb8065fbff93ffc731e8cf57b8b79281bc0c5531c118530d3b6a12509`

```dockerfile
```

-	Layers:
	-	`sha256:b853a158c47570e08217daa09941704c01667db646485998bf99bc023b82f643`  
		Last Modified: Tue, 06 Oct 2026 01:40:52 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
