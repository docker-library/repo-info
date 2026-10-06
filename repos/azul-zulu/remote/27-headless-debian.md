## `azul-zulu:27-headless-debian`

```console
$ docker pull azul-zulu@sha256:ade55a53f0fa910f14c9a071007ab607db1a37603d0184480230f3d7efbea40f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4c4f82567cb19ea1e85e858eea096d3ad1b650eba54acca23e432df605020813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213147232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a18cd0e49e6c90e0d55b701b3bc1e634deebe90954748ca0fef37081e4ccef`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:52 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:52 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 06 Oct 2026 01:40:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb558380d8f7797fbf7c81d32e3a8bf5fc172622a42354e480c3626b3d92716`  
		Last Modified: Tue, 06 Oct 2026 01:41:08 GMT  
		Size: 183.3 MB (183303882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5ea0cb43052a8f75c8c3e131d83ad9d40f5a22e88129fbbf9518ad511716866d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3e80c76dbded47a202430b49d832ba6b94599810c4ff63ac461d66382d3db7`

```dockerfile
```

-	Layers:
	-	`sha256:2b403ba562990092a76180de1eec1a48fba6c6137001f11312b52aa2bbe7226f`  
		Last Modified: Tue, 06 Oct 2026 01:41:04 GMT  
		Size: 9.3 KB (9283 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1454a5e84ca960656261e4e3cd9a94b192270ca674db4f9be4b1cca4ad4a2c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213184207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f753b104c549e723ce5d43061be9b2f7c885886942774ae9e6afb658274991`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:07 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:44:07 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:44:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:44:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 06 Oct 2026 01:44:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bfdc2f6e740a3e447773e9c3a4fe52b3ab69d68b6d083c6c3d0f36bef41bb1`  
		Last Modified: Tue, 06 Oct 2026 01:44:25 GMT  
		Size: 183.0 MB (182983925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:126d931ea99c4e1449e97d4875d7fcca8e14008570feda947b71a2690c590572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68347c9bfe3a64fc9f4ee42316ad0a61287db044a6acaf88a66b74f34572ea11`

```dockerfile
```

-	Layers:
	-	`sha256:0a589a639134b1a0774c57dee2b70c017fc82d4d2cda8185dfba6532cc8706b0`  
		Last Modified: Tue, 06 Oct 2026 01:44:21 GMT  
		Size: 9.4 KB (9387 bytes)  
		MIME: application/vnd.in-toto+json
