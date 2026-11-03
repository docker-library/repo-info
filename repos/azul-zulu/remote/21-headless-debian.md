## `azul-zulu:21-headless-debian`

```console
$ docker pull azul-zulu@sha256:cb6f5895491339f7aefb91158dcb557dd1db228341e6f0fe1078afa2b8494e3c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bcca4c8ec2e7e80d074748935435100b0c86b6e36947d4d78d69c057b488216e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.0 MB (192957948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc55aee3c8afdb1124d6d524821bf6fe48f54baa7606da684225d08411fc6c6`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:09:25 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:25 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:09:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:09:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bf7181412d246b282a1613c537e67699b2b68654fad5ad00ff668a4fa8f818`  
		Last Modified: Tue, 03 Nov 2026 00:09:41 GMT  
		Size: 163.1 MB (163102712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:46bb459d896f6bdc251ba8ba929f79fdc94512f333f710453e4b7c213bef59eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4fb084f29a863071071a2b0aac94a2a568cf87bfdbcf4cded72406f64ea75e4`

```dockerfile
```

-	Layers:
	-	`sha256:bfa111b7cf1e0f494d3c640dc0d06d31abcbd119521e5e9c16242002b2963ad6`  
		Last Modified: Tue, 03 Nov 2026 00:09:37 GMT  
		Size: 9.3 KB (9314 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bcf820fc4772d18db28c63a23b937780b1f10700f8e28c4a70a540334da80a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192637386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8155865843ff762f1798d6251db2a44ef3b541d4323fc84b252c5ab626b83a5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:09:35 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:35 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:09:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:09:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587b20170a95e58e9ae92b7692f24d696c5aa05bd466815c18e3c6379de836f6`  
		Last Modified: Tue, 03 Nov 2026 00:09:53 GMT  
		Size: 162.4 MB (162423890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e3487ec307c9bd4b1a61896411bd6b43335e1396b2b6cfea2b8f979feddae363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1764fd2d70143aff3869485aab59e53b7da1cef0be5ab449828e602248985c71`

```dockerfile
```

-	Layers:
	-	`sha256:50b6ba71c9e7e96334f856dbb6a7080c53cb8efec703d408e548edfea87643b2`  
		Last Modified: Tue, 03 Nov 2026 00:09:49 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json
