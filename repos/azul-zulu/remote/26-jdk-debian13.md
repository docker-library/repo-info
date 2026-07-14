## `azul-zulu:26-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:45414ad739db0cb9a5abb25abe998dfeefdc2028733c3374b6f23b4d35f1d529
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b746ec331b167b55bf01c5803b1c44a395ac4d2ec05fe15551bf4ff91c3a9def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217227432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f035da803c60b661cc47b28970b1538ea7c60d2cf880e763fa0f3c9a560fbae`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:43:21 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:43:21 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:43:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:43:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 14 Jul 2026 01:43:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1313aa92857eb2d5838156875da4e097860f91a9d336a4a82c131cafc70542`  
		Last Modified: Tue, 14 Jul 2026 01:43:39 GMT  
		Size: 187.4 MB (187446527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2d5a8719d05e7683049d4e626fea8935e28c4792d223db064c8aa94705833c09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad4f8bc2008f4694c1a20e2a7a62e264abbc21469bb40bec957c2a98269c3c9`

```dockerfile
```

-	Layers:
	-	`sha256:a3329a595e6a9172593125761c8a0ab00c88059f9a2370f6e34929c5cc3b9616`  
		Last Modified: Tue, 14 Jul 2026 01:43:35 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6671eae16b4108b00762766ed32c0f9b900fcb97785b7e0e0e5a07132399a4bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217270922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc38b0c68c088600544bfed232f585812079935e9f5a87547ccdd7534df8e57`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:46:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:46:09 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:46:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:46:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 14 Jul 2026 01:46:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba07ccda927b1a6c1b0478b99f71306f3364fbdf0790a8d432532fdaa5ff755`  
		Last Modified: Tue, 14 Jul 2026 01:46:30 GMT  
		Size: 187.1 MB (187127217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e59031ac28de0ac05f237428b218e8dcadd1351453fbddf9e7fab9987b07613e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403b5e8f8a1859537e953629ce1d1a720c4586c919bdfef6ff1891dad3fc3e3d`

```dockerfile
```

-	Layers:
	-	`sha256:8303db4dfb523eed53a4590f1d88c045dda818dd181308c16960e0894ddb0452`  
		Last Modified: Tue, 14 Jul 2026 01:46:25 GMT  
		Size: 9.6 KB (9619 bytes)  
		MIME: application/vnd.in-toto+json
