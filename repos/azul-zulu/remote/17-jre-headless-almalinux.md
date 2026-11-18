## `azul-zulu:17-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:82ca890cb05a1ea37eaefd600ab350ff0dd89f211bd98d8e3611d1cd7f882363
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f8d827038330954e80d3dce5fdbc99713aceea50bb264caf5ad5a16c5fdc9bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140161082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6206d59aac1ecf9de159e35fa0ceceaec0a95c577e424b75c7d391890669a985`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:45 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:45 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f49fdf45888e07ae141273589d7395a5a05be0314110e189ceb474f95bf024`  
		Last Modified: Wed, 18 Nov 2026 02:41:58 GMT  
		Size: 70.8 MB (70790602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e4cccd71cf0da9187bb04bd12e32a4aa7533720a697e4711de782c16c05bcaaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8655c54a06539171c548b05e9f24542e6925a601f0fed90fd2c6899a171e134`

```dockerfile
```

-	Layers:
	-	`sha256:be2a8e13c7929ec1bc085f2204ee5958d503b741a8201bf81275983187683b34`  
		Last Modified: Wed, 18 Nov 2026 02:41:56 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:898c368b285453f47d56742f94b63a69d5ae6db07ccf1d692f52bcd3968c01e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138788750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab852374810ca73b90aa933603d05dd96ef267a6ab52571724ea37615ff69270`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:38 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:38 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:38 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbca7f18042f7fec22ffd86e8cdbbef7df85629154b14e8863bd7657edc4ba1d`  
		Last Modified: Wed, 18 Nov 2026 02:41:50 GMT  
		Size: 70.8 MB (70838176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a5a0c0db4011afe95f29112704fc641e15fa2e4edb0f2e18da1dbea0fa628cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915c509808872ce786da5cdce398586c9a153216ae0815b7220b8227be6f926a`

```dockerfile
```

-	Layers:
	-	`sha256:0bb22ad2b247693d84ea8627ced8a84f54414419afd9def25eb004866b3cf282`  
		Last Modified: Wed, 18 Nov 2026 02:41:48 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
