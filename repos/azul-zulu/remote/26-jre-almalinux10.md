## `azul-zulu:26-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:2f66f889d919d5dc5058ef0714488dde265e4aabdde7e4d6410885514cf4b624
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:51e8d67ae3ced8030ea44d61faca8d26764d5f4221557f41ac7f1aee52dc362a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161073072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8164fde9153d28a625508387186b7cf49b0522abb03ca89f1b69b11c6c6a7caa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:16 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:16 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 18:11:16 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348eb7f61dcc82df17e13d1d8495106c559ad50be7d5988c97ea38c70955addf`  
		Last Modified: Mon, 16 Nov 2026 18:11:30 GMT  
		Size: 91.9 MB (91947293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9b45b99f1d8f0a61f825e8ef019d720d093f498c1fe74b055d2ce6058030d6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a92dd83daaf18075dedd4cb4e1b56c2bac6648294af6007d1b0fcb4f910fc7`

```dockerfile
```

-	Layers:
	-	`sha256:4a070795d6c0550ec1d16e40a3c8fa78375f3fbe1b7397a9bd3c79f1db571ac3`  
		Last Modified: Mon, 16 Nov 2026 18:11:27 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4cc58e1edc9847a5260846b0e85ec1f69d70b2afb30c7ffe686168d0ec5b8c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159566092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c53745f934b6fbce1320d8def0f8d97299d9c8658b15b706c9e104ab3559b09b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:10 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 18:11:10 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac41fae0e4a1b591be3eee74a9e9ecc51e59a7c6fd85f0992ad4a92fedb5b66`  
		Last Modified: Mon, 16 Nov 2026 18:11:24 GMT  
		Size: 91.9 MB (91868276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:24bae28923f2ddc70d1ad9371f8f971c2c6c25d8b260c9950ef741a591aa70ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b8c3f5fbaabe2e18881f9fa178406b9eaaae5d39ad7ad5cda058bab79d3bb0`

```dockerfile
```

-	Layers:
	-	`sha256:6cb9745d1c71f11c4bacd9b8d8f0dc6109ebc0863715f8fc339326f9da060fab`  
		Last Modified: Mon, 16 Nov 2026 18:11:22 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json
