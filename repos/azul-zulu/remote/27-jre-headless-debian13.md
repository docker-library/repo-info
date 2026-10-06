## `azul-zulu:27-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:1eaf29de1ab230886fda6cc6913390aa039bd84a0d6d82e3f5344b665f20ec7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:104b64597b89378d9e2bfd4cfab88efbcca933ba36c3d8a0ebdae1a3c619d9a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118880154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b23fb80222b8c3e27060820ed47c7b8286cd7d9171000cea4667b429fe734ef4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:11 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:41:11 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:41:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:41:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e0dca232ad5425cd88ca9d75276ade01ddc69019933d0004023ab8944bfbdc`  
		Last Modified: Tue, 06 Oct 2026 01:41:25 GMT  
		Size: 89.0 MB (89036804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:49267f1b0ea4660bf9657c691b4b57c2e9eea910ab717a49fdeaf140b7e1fad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f862823acb23926ddd66c74465eeabef82cf4fba4325d6ebd6a5ef17f55ea0a`

```dockerfile
```

-	Layers:
	-	`sha256:39726ebf3fbf3ebd028a04fb0e93f8ad8385c72310f1121f42fcff049433aa81`  
		Last Modified: Tue, 06 Oct 2026 01:41:22 GMT  
		Size: 9.3 KB (9290 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6df0e810cf637d52389630b4ab6b0796f4dd8751430548c1dfa8b56c1e971c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119126319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d10c2d73d81c7aef548a9ae31b58cde706d620374ff4adbf71f935629326c40`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:26 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:44:26 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:44:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:44:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4ed5e3f6469ed9917dee21291473cbc4bb9dc8332acec23468a195fb3010d5`  
		Last Modified: Tue, 06 Oct 2026 01:44:40 GMT  
		Size: 88.9 MB (88926037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:477b0de36b7c6bd7decbe1dff840e063b5630fd2561bb6f034a8f2bf3116f40c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88a2fd1ade018f44e76e5e8091342124dbb731849a8eb4790f338fb560f05c1`

```dockerfile
```

-	Layers:
	-	`sha256:67e34c48f5d86d614793a8b0a554d3263a4d630bcfa5612a6d0161826f466a57`  
		Last Modified: Tue, 06 Oct 2026 01:44:37 GMT  
		Size: 9.4 KB (9394 bytes)  
		MIME: application/vnd.in-toto+json
