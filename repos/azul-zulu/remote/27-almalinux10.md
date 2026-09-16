## `azul-zulu:27-almalinux10`

```console
$ docker pull azul-zulu@sha256:a89a1b736589be3900dccc7382396d4e65a26c0c135f7aaa6ff363f8587fd848
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:773efc7a56b89d47da16c58e976d18f899becf7b00037e6ed0106e312b1ed8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (253957503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f295b55bd46f1b5f552b8de14bfc2c31b699af84536d740877d702b700e0a9`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:29:45 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:29:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:29:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 16 Sep 2026 16:29:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:29:45 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 16:29:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eed8dc5a61cdd7ade4716a34894a60440844f98889278bb136d5a286def4a9`  
		Last Modified: Wed, 16 Sep 2026 16:30:04 GMT  
		Size: 185.1 MB (185094835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fead0fcf51cd88bd1ae3a7937578811e42c2ca1eba4afb21921379e38da4fd72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b930462e10155be786a0ae3bacdfad30f135c40d02f583ea7c340c389780446`

```dockerfile
```

-	Layers:
	-	`sha256:e6db5a601a7e01d6a550297c5aec7321b79e3296de521979a02dd48080389b6a`  
		Last Modified: Wed, 16 Sep 2026 16:30:00 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e9ade13a8c5b5d16027cfd0e486424672bc39ff73d83e9382e1b6883772eb58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252202536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a6a00559ae9febdb63efe951bdd46c7afcda1d033e19bdcb3474b55cb2e255`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:29:39 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:29:39 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:29:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 16 Sep 2026 16:29:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 16 Sep 2026 16:29:39 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 16:29:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6606e959d18dbc346c58d80fee8c1bbfe62f9e0f7ec3039bed70f1a1682212`  
		Last Modified: Wed, 16 Sep 2026 16:30:00 GMT  
		Size: 184.8 MB (184770734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:137b5e6b5a62c91625877d83effdf7ffd423cc0e830200ba482283cb032ed350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a121bc75778a0ef70ca34fb9312fa84fd431349a191deaf6c5e901240caaf4a`

```dockerfile
```

-	Layers:
	-	`sha256:8d01f7c39314bcaade9fbe246c21b0dbad610ad783e300798215c578efeeb807`  
		Last Modified: Wed, 16 Sep 2026 16:29:55 GMT  
		Size: 9.6 KB (9571 bytes)  
		MIME: application/vnd.in-toto+json
