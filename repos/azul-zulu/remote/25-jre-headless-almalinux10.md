## `azul-zulu:25-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:3034d2e808fd4875a01e74db40ecb7429b8e3131fc84f5791b2e12a7c157e84c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1d49253d4804503818b53aeeaecb6c6975e267cc559c243993cd4ce83506cd1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159101574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4bf03dae8d8d29afdd42166f10a1c5dc06aff7a3de6a317ffbaed0c0c9036c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:07 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:07 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 18:11:07 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c96a45de6c3a6116e301a4f12d14f64d7058650ba4398d997cc277a9b7221df`  
		Last Modified: Mon, 16 Nov 2026 18:11:21 GMT  
		Size: 90.0 MB (89975795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:77f902b14bf8fac13dc20161962153cc15343c67ebff8503649655fb4458760c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e78698848915c3c72ce93da4f00693ee085c9a76a1912eaccc760136a7e26d`

```dockerfile
```

-	Layers:
	-	`sha256:7799aede15c8d6b3b5fffcbcc61ef5367bc71430e47d7c8df701ec9441d674b5`  
		Last Modified: Mon, 16 Nov 2026 18:11:19 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:359ad91e9870e06a0f87c76607b49be9dbe0b5a1d4f86e6bd733c4d30c405ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157244163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926b955e2570cab37e686cbf63e922a304f15600bb1b76695cf9b25965142a13`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:56 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:56 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 18:10:56 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eef54826b6fe8ee6f9b05079fb02abfec2b89b82fdec998e1145f2be092b0e64`  
		Last Modified: Mon, 16 Nov 2026 18:11:10 GMT  
		Size: 89.5 MB (89546347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:46981497f7afa3cc16e503e1b2c70d44f94c9b458f668001eb36daf7e1b154e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84d13dd050bb5a575d9214ff444940335d0c800fcebbbfe5ba350cbb7a056ca`

```dockerfile
```

-	Layers:
	-	`sha256:32588fde7181efabfc5d0b01d3cb8ef634f00d83c59124487a26e7cb29c224c0`  
		Last Modified: Mon, 16 Nov 2026 18:11:08 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.in-toto+json
